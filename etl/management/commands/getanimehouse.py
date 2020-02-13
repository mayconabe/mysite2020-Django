from django.core.management.base import BaseCommand, CommandError
from etl.models import AnimeHouse
from .chrome import Chrome

URLS = ["https://animeshouse.net/anime/", "https://animeshouse.net/anime/page/2/"]

class Command(BaseCommand):

    def handle(self, *args, **options):
        chrome = Chrome()
        for url in URLS:
            chrome.get(url)
            chrome.get_screenshot_as_file('animehouse.png')
            animes = chrome.find_elements_by_css_selector(".tvshows")

            for a in animes:
                element_a = a.find_element_by_css_selector(".data a")
                nome = element_a.text
                url = element_a.get_attribute("href")
                slug = url.split('/')[-2]
                print(nome, url, slug)


                if nome != '':
                    if AnimeHouse.objects.filter(nome=nome).count() == 0:
                        AnimeHouse.objects.create(nome=nome, imagem='', ano=0, slug=slug, sinopse='')
                    else:
                        anime = AnimeHouse.objects.get(nome=nome)
                        anime.imagem = ''
                        anime.ano = 0
                        anime.slug = slug
                        anime.save()
        chrome.quit()