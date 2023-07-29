# encoding: utf-8
import time

import sys
# reload(sys)
# sys.setdefaultencoding('utf8')
import os
from shutil import copyfile
import json
import requests
import zipfile as zip
from shutil import copyfile,rmtree
from bs4 import BeautifulSoup
from googletrans import Translator
import DataIndexer as dtIdx
import GitApi
import re
translator = Translator()
from datetime import datetime

# faz o download dos da ultima versao publicada (stable)
latest = requests.get("https://github.com/BSData/wh40k/releases/latest")
#latest = requests.get("https://github.com/BSData/wh40k")
html = BeautifulSoup(latest.text, "lxml")
print (html)
d = html.find_all(href=re.compile("bsr"))

for i in d:
    print(i)


#link = "https://github.com/" + d[0]["href"]
#print("Efetuando download")
#print(link)
# r = requests.get(link)
# open('wh40k-master.zip', 'wb').write(r.content)
# print('Download completo')
# with zip.ZipFile('./wh40k-master.zip', mode='r') as zip_ref:
#     zip_ref.extractall(path='./wh40k-master')
# print('Arquivos extraídos')


d1 = html.find_all("li")

for d in d1:
    if re.match("v\d+\.\d+\.\d+",d.text.strip()):
        print (d.text.strip())


path="."
link = "https://github.com/BSData/wh40k/archive/refs/heads/master.zip"
print ("Efetuando download")
print (link)
r = requests.get(link)
open('wh40k-master.zip', 'wb').write(r.content)
print ('Download completo')
with zip.ZipFile('./wh40k-master.zip', mode='r') as zip_ref:
    zip_ref.extractall(path='./wh40k-master')



x=12345678

def momo():
    global x
    x+=1
momo()
momo()
momo()
momo()
print(x)