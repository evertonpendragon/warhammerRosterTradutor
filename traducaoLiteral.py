# encoding: utf-8
# encoding: iso-8859-1
# encoding: win-1252
# encoding=utf8
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


def traducaoLiteral(text, dicionario_termos):
    for kk in dicionario_termos:
        if kk in text:
            #print("Traducao Literal")
            # print(text)
            # print(text.replace(kk, dicionario_termos[kk]))
            text=text.replace(kk, dicionario_termos[kk])

    text=re.sub("(?!\d+)(\s\")", "\" ", text, 1)
    return text

def googleTranslateText(text, dest):
    textTransl=''
    if text not in ('', '0', '-'):
        try:
            print ("Traduzindo no google >>>\n", text,type(text))

            textTransl = translator.translate(text, dest=dest).text
            textTransl = traducaoLiteral(textTransl,dicionario_termos)
            print (textTransl)
            return textTransl
        except Exception as e:
            print ("Falha na traducao do Google, {exception}, {e}".format(exception=str(Exception),e=str(e)))
            #sys.exc_clear()
            return text


with open('dicionario.json', "r") as file:
    dicionario = json.loads(file.read())
    file.close()
with open('dicionario_termos.json', "r") as file:
    dicionario_termos = json.loads(file.read())
    file.close()


text = "ADD 1 TO WOUND ROLLS FOR FRIENDLY INCUBI UNITS WHILST THEY ARE WITHIN 6\" OF THIS MODEL."

googleTranslateText(text,'pt')
