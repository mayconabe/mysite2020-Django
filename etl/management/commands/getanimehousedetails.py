from django.core.management.base import BaseCommand, CommandError
from etl.models import AnimeHouse
from .chrome import Chrome
import urllib.request
import requests
import shutil

BASE_URL = 'https://animeshouse.net/anime/'

class Command(BaseCommand):

    def handle(self, *args, **options):
        chrome = Chrome()
        for a in AnimeHouse.objects.all()[0 : 2]:
            print(a.nome)
            url = BASE_URL + a.slug
            chrome.get(url)
            sinopse = chrome.find_element_by_css_selector(".wp-content p").get_attribute('innerHTML')
            img_source = chrome.find_element_by_css_selector(".poster img").get_attribute('src')
            #urllib.request.urlretrieve(img_source, '{}.png'.format(a.id))
            r = requests.get(img_source, stream=True)
            if r.status_code == 200:
                with open('{}.png'.format(a.id), 'wb') as f:
                    r.raw.decode_content = True
                    shutil.copyfileobj(r.raw, f)

            #chrome.get(img_source)
            #chrome.get_screenshot_as_file('{}.png'.format(a.id))
            print(sinopse)
            print(img_source)
            a.sinopse = sinopse
            a.save()
        
        chrome.quit()