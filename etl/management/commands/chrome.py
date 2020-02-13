from selenium import webdriver
from selenium.webdriver.chrome.options import Options

USER_AGENT = 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36'


class Chrome(webdriver.Chrome):

    def __init__(self):
        chrome_options = Options()
        chrome_options.add_argument('--headless')
        chrome_options.add_argument('--window-size=1920x1080')
        chrome_options.add_argument('--user-agent=' + USER_AGENT)
        chrome_options.add_argument('--log-level=3')
        return super(Chrome, self).__init__(chrome_options=chrome_options)