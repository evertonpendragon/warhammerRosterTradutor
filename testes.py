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


# with open('dicionario.json', "r",encoding='utf8') as file:
#     dicionario = json.loads(file.read())
#     file.close()
with open('dicionario_termos.json', "r") as file:
    dicionario_termos = json.loads(file.read())
    file.close()


text = "IF EVERY UNIT FROM YOUR ARMY HAS THE ADEPTUS ASTARTES KEYWORD (EXCLUDING AGENT OF THE IMPERIUM AND ALIGNED UNITS), THIS UNIT GAINS A BONUS (SEE BELOW) DEPENDING ON WHICH COMBAT DOCTRINE IS ACTIVE FOR YOUR ARMY, AS FOLLOWS:\n\n• DURING THE FIRST BATTLE ROUND, THE DEVASTATOR DOCTRINE IS ACTIVE FOR YOUR ARMY.\n• DURING THE SECOND BATTLE ROUND, THE TACTICAL DOCTRINE IS ACTIVE FOR YOUR ARMY.\n• AT THE START OF THE THIRD BATTLE ROUND, SELECT EITHER THE TACTICAL DOCTRINE OR ASSAULT DOCTRINE: UNTIL THE END OF THAT BATTLE ROUND, THE DOCTRINE YOU SELECTED IS ACTIVE FOR YOUR ARMY.\n• DURING THE FOURTH AND SUBSEQUENT BATTLE ROUNDS, THE ASSAULT DOCTRINE IS ACTIVE FOR YOUR ARMY.\n\nUNLESS SPECIFIED OTHERWISE, THIS BONUS IS NOT CUMULATIVE WITH ANY OTHER RULES THAT IMPROVE THE ARMOUR PENETRATION CHARACTERISTIC OF A WEAPON (E.G. THE STORM OF FIRE WARLORD TRAIT).\n\nDEVASTATOR DOCTRINE\nWHILE THIS COMBAT DOCTRINE IS ACTIVE, IMPROVE THE ARMOUR PENETRATION CHARACTERISTIC OF EVERY HEAVY AND GRENADE WEAPON THAT MODELS IN THIS UNIT ARE EQUIPPED WITH BY 1.\n\nTACTICAL DOCTRINE\nWHILE THIS COMBAT DOCTRINE IS ACTIVE, IMPROVE THE ARMOUR PENETRATION CHARACTERISTICS OF EVERY RAPID FIRE AND ASSAULT WEAPON THAT MODELS IN THIS UNIT ARE EQUIPPED WITH BY 1.\n\nASSAULT DOCTRINE\nWHILE THIS COMBAT DOCTRINE IS ACTIVE, IMPROVE THE ARMOUR PENETRATION CHARACTERISTIC OF EVERY PISTOL AND MELEE WEAPON THAT MODELS IN THIS UNIT ARE EQUIPPED WITH BY 1."

googleTranslateText(text,'pt')
