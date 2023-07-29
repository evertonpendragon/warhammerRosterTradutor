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

"""
# encoding: utf-8
# encoding: iso-8859-1
# encoding: win-1252
# encoding=utf8
"""



########################################################################################################################
# PROGRAMA PRINCIPAL
# Faz download do repositório oficial
# Lê os arquivos cat da pasta wh40k-master, traduz utilizando o dicionário e
# gera os arquivos catz prontos para serem importados no Battlescribe
# Passo 2: Criar o repositorio com o BS clicando em share my data
# Passo 3: C:\Users\evert\Documents\GitHub\BSDataBrasil\
########################################################################################################################

qtd_traducoes_google=0
qtd_traducoes_literais=0




def traducaoLiteral(text, dicionario_termos):
    global qtd_traducoes_literais
    for kk in dicionario_termos:
        if kk in text:
            #print("Traducao Literal")
            # print(text)
            # print(text.replace(kk, dicionario_termos[kk]))
            text=text.replace(kk, dicionario_termos[kk])
            qtd_traducoes_literais+=1
    text=re.sub("(?!\d+)(\s\")", "\" ", text, 1)
    return text

# def googleTranslateText(text, dest):
#     textTransl=''
#     if text not in ('', '0', '-'):
#         try:
#             print ("Traduzindo no google >>>\n", text,type(text))
#
#             textTransl = translator.translate(text, dest=dest).text
#             print (textTransl)
#             return textTransl
#         except Exception as e:
#             print ("Falha na traducao do Google, {exception}, {e}".format(exception=str(Exception),e=str(e)))
#             #sys.exc_clear()
#             return text
def googleTranslateText(text, dest):
    global qtd_traducoes_google
    textTransl=''
    if text not in ('', '0', '-'):
        try:
            print ("Traduzindo no google >>>\n", text,type(text))

            textTransl = translator.translate(text, dest=dest).text
            textTransl = traducaoLiteral(textTransl,dicionario_termos)
            print (textTransl)
            qtd_traducoes_google+=1
            return textTransl

        except Exception as e:
            print ("Falha na traducao do Google, {exception}, {e}".format(exception=str(Exception),e=str(e)))
            #sys.exc_clear()
            return text

def backupDicionario():
    print("Backup do Dicionario")
    file_name = "dicionario.json.{date}.zip".format(date=datetime.now().strftime("%Y%m%d"))
    if not os.path.exists(file_name):
        compression = zip.ZIP_DEFLATED
        with zip.ZipFile(file_name, mode='w') as zip_ref:
            zip_ref.write( ".\dicionario.json", compress_type=compression)
            zip_ref.close()
    print("Backup realizado com sucesso")
    time.sleep(5)


def compactCat(ppath):
    print ('\n\n\n\n',  'Compactando arquivo')
    os.chdir(ppath)
    destCatFiles = os.listdir('.')
    destCatFiles = filter(lambda x: x[-1] != 'z', destCatFiles)
    for f in destCatFiles:
        # print (f)
        compression = zip.ZIP_DEFLATED
        with zip.ZipFile(f+'z', mode='w') as zip_ref:
            zip_ref.write( f, compress_type=compression)
            zip_ref.close()
        os.remove(f)
def copyCatToRepoDir(ppath, destPath):
    print ('\n\n\n\n',  'Copiando para diretorio do repositorio')
    #os.chdir(ppath)
    destCatFiles = os.listdir(ppath)
    destCatFiles = filter(lambda x: x[-1] != 'z', destCatFiles)

    for f in destCatFiles:
        print ('copiando arquivo', ppath+f, ' ', destPath+f)
        copyfile(ppath+f, destPath+f)

def downloadWh40kSource():
    #faz o download dos ultimos commits, que ainda nao foram publicados (beta)
    r = requests.get('https://github.com/BSData/wh40k/archive/master.zip')
    open('wh40k-master.zip', 'wb').write(r.content)
    print ('Download completo')
    with zip.ZipFile('./wh40k-master.zip', mode='r') as zip_ref:
        zip_ref.extractall(path='.')
    print ('Arquivos extraídos')

def downloadWh40kLatestSource():
    #parou de funcionar pq o git mudou sua pagina e os links ficaram ocultos, visiveis somente quando o cursor do mouse eh apontado para eles
    # faz o download dos da ultima versao publicada (stable)
    latest = requests.get("https://github.com/BSData/wh40k/releases/latest")
    html = BeautifulSoup(latest.text, "lxml")
    d = html.find_all(href=re.compile("bsr"))
    link = "https://github.com/" + d[0]["href"]
    print ("Efetuando download")
    print (link)
    r = requests.get(link)
    open('wh40k-master.zip', 'wb').write(r.content)
    print ('Download completo')
    with zip.ZipFile('./wh40k-master.zip', mode='r') as zip_ref:
        zip_ref.extractall(path='./wh40k-master')
    print('Arquivos extraídos')

def downloadWh40kLatestSource_vjan2023():
    # faz o download dos da ultima versao publicada (stable)

    # latest = requests.get("https://github.com/BSData/wh40k/releases/latest")
    # html = BeautifulSoup(latest.text, "lxml")
    # d = html.find_all(href=re.compile("bsr"))
    link = "https://github.com/BSData/wh40k/archive/refs/heads/master.zip"
    print ("Efetuando download")
    print (link)
    r = requests.get(link)
    open('wh40k-master.zip', 'wb').write(r.content)
    print ('Download completo')
    with zip.ZipFile('./wh40k-master.zip', mode='r') as zip_ref:
        zip_ref.extractall(path='./')
    print('Arquivos extraídos')
def translateText(description,dicionario):
    #description=description.upper()
    if description.upper() in dicionario:
        descriptionPT = dicionario[description]
    elif description not in ('','0','-'):
        #description.replace("","'") in dicionario
        print ("Texto nao encontrado no dic {t}".format(t=description))
        descriptionPT=description
    return descriptionPT


def limpaBsrDir():
    for f in os.listdir("bsr"):
        f = os.path.join("bsr",f)
        print("removendo arquivo {}".format(f))
        os.remove(f)
#################################vo#######################################################################################

if __name__ == '__main__':
    limpaBsrDir()
    backupDicionario()

    originPath = "./wh40k-master/"
    destPath = "./wh40kBR-master/"
    catRepoDir = 'C:/Users/evert/Documents/GitHub/BSDataBrasil/wh40kBR/'
    projectDir= 'C:/Users/evert/Documents/PycharmProjects/WarhammerRosterTradutor/'
    #gameSystemId ='49b6-bc6f-0390-1e40'#8th edition
    gameSystemId='38ec-711c-d87f-3aec'
    gameSystemRevision="153" #usado na migracao para a 9th edicao, automatizar para ler do arquivo gst

    print ('Download do repositório de origem')
    #downloadWh40kSource()
    #downloadWh40kLatestSource()  #parou de funcionar em jan-2023
    downloadWh40kLatestSource_vjan2023()

    if os.path.exists(destPath):
        rmtree(destPath, True)


    if not os.path.exists(destPath):
        os.makedirs(destPath)

    for f in os.listdir(originPath):
        originFileFullPath = originPath+f
        BR_file = f.replace(' ', '_').replace(',','.').replace('\'','')
        BR_zfile = BR_file + 'z'

        destFileFullPath = destPath + BR_file
        if os.path.splitext(originFileFullPath)[1] in [".catz",'.gstz']:
            with zip.ZipFile(f, 'r') as zip_ref:
                zip_ref.extractall(destPath)
        elif os.path.splitext(originFileFullPath)[1] in ['.cat', '.gst']:
            copyfile(originFileFullPath, destFileFullPath)
        else:
            continue


    #catz = filter(lambda x: 'Wolves.cat' in x, catz) #filtra somente um arquivo dos sparce wolves

    with open('dicionario.json', "r",encoding='utf8') as file:
        dicionario = json.loads(file.read())
        file.close()
    with open('dicionario_termos.json', "r") as file:
        dicionario_termos = json.loads(file.read())
        file.close()

    dicionario = {k.upper():v for k,v in dicionario.items()}
    #dicionarioNew = {}

    #traducao literal de termos
    print("Iniciando traducao literal")
    for k in dicionario:
        for kk in dicionario_termos:
            # print( dicionario[k])
            # print(dicionario[k])
            if dicionario[k] is None:
                print (">>",k)

            if kk in dicionario[k]:
                try:
                    print(">>>", kk, dicionario[k])
                    print( "Traducao Literal")
                    print(dicionario[k])
                    print (k.replace(kk,dicionario_termos[kk]))
                    dicionario[k]=dicionario[k].replace(kk,dicionario_termos[kk])
                except Exception as e:
                    print(str(e))
                    exit(-1)
            else:
                print(kk,"nao esta em :", dicionario[k])
    naoLocalizados=0
    catz = os.listdir(destPath)
    for cfile in catz:
        try:
            destCatFileName = destPath + cfile
            with open(destCatFileName, "r", encoding="utf8") as file:
                catFile = file.read()
                file.close()
            cat = BeautifulSoup(catFile, "xml")
            #print catFile


            if 1==1: #filtro para debbug
                # TRADUZ ARQUIVO CAT
                for catalogues in cat.find_all("catalogue"):
                    catalogues["name"] += "-BR"

                    catalogues["gameSystemId"] = gameSystemId
                    catalogues["gameSystemRevision"] = gameSystemRevision

                    for catalogue in catalogues.children:
                        # print catalogue.name, type(catalogue)
                        if catalogue.name != None:
                            #print 'n1', catalogue.name
                            if catalogue.name in ["sharedrules", "sharedprofiles", "selectionentries", "sharedselectionentries",
                                                  "sharedselectionentrygroups","sharedRules","sharedProfiles","sharedSelectionEntryGroups",
                                                  "sharedSelectionEntries","selectionEntries"]:
                                for catElement in catalogue.children:
                                    if catElement.name != None:
                                        for ruleTag in catElement.find_all("description"):
                                            rule = ruleTag.get_text() .upper() #
                                            # print rule
                                            if rule.upper() in dicionario.keys() and len(rule) > 1:
                                                rulePT = dicionario[rule]
                                                #print "Traduzindo>>>", cfile,"\n", rule, "\n", rulePT
                                                #print type(cat)
                                                try:
                                                    #cat.find(text=rule).replaceWith(rulePT)
                                                    #ruleTag["description"]=rulePT
                                                    ruleTag.string=rulePT

                                                except Exception:
                                                    print ("falha na traducao")
                                                    # sys.exc_clear()

                                            else:
                                                if rule != "-" and rule != "" and rule != " " and rule != "0" and type(rule)!=None:
                                                    if rule != "":
                                                        print ("Nao existe no dicionario")
                                                        textPT = googleTranslateText(ruleTag.get_text(), dest='pt')
                                                        dicionario[rule]=textPT
                                                        naoLocalizados += 1

                                        for characteristicsTag in catElement.find_all("characteristic"):
                                            if characteristicsTag["name"] in ["Abilities", "Description","Details","Capacity"]:
                                                # print profiles["name"],   characteristic["name"], characteristic["value"],characteristic

                                                #print characteristicsTag.text

                                                #if characteristicsTag.has_attr('value')  :#removido na versao 2, 13/06/2019
                                                #description = characteristicsTag["value"] #removido na versao 2, 13/06/2019
                                                description = characteristicsTag.text.upper() #linhas foram recuadas pq  if de cima foi removido #if characteristicsTag.has_attr('value')
                                                #print description
                                                if description.upper() in dicionario.keys() and len(description) > 1:
                                                    descriptionPT =translateText(description,dicionario)#dicionario[description]
                                                    # print "adicionando", description
                                                    #print "Traduzindo>>>", cfile,"\n", description, "\n", descriptionPT
                                                    #print type(cat)
                                                    try:
                                                        #cat.find(text=description).replaceWith(descriptionPT)

                                                        #characteristicsTag["value"]=descriptionPT
                                                        characteristicsTag.string = descriptionPT
                                                        #print characteristicsTag.text
                                                    except Exception as e:
                                                        print ("falha na traducao {e}".format(e=str(e)))
                                                        # sys.exc_clear()
                                                else:
                                                    if  description != "-" and description != "" and description != " " and description != "0":
                                                        print ("nao existe no dicionario")
                                                        if description!="":
                                                            naoLocalizados+=1
                                                            textPT = googleTranslateText(characteristicsTag.text, dest='pt')
                                                            dicionario[description] = textPT


                # TRADUS ARQUIVO GST
                for catalogues in cat.find_all("gameSystem"):
                    catalogues["name"] += "-BR"
                    catalogues["gameSystemId"] = gameSystemId
                    catalogues["gameSystemRevision"] = gameSystemRevision
                    catalogues["id"] = gameSystemId
                    for catalogue in catalogues.children:
                        # print catalogue.name, type(catalogue)
                        if catalogue.name != None:
                            #print 'n1', catalogue.name
                            if catalogue.name in ["sharedrules", "sharedprofiles", "selectionentries", "sharedselectionentries",
                                                  "sharedselectionentrygroups","sharedRules","sharedProfiles","sharedSelectionEntryGroups",
                                                  "sharedSelectionEntries","selectionEntries",""]:
                                for catElement in catalogue.children:
                                    if catElement.name != None:
                                        for ruleTag in catElement.find_all("description"):
                                            rule = ruleTag.get_text() .upper() #
                                            # print rule
                                            if rule.upper() in dicionario.keys() and len(rule) > 1:
                                                rulePT = dicionario[rule]
                                               # print "Traduzindo>>>", cfile,"\n", rule, "\n", rulePT
                                                try:
                                                    #cat.find(text=rule).replaceWith(rulePT)
                                                    #ruleTag["description"]=rulePT
                                                    # ruleTag["description"]=rulePT
                                                    ruleTag.string = rulePT
                                                except Exception:
                                                    print ("falha na traducao")
                                                    # sys.exc_clear()

                                            else:

                                                if description!="" and description != "-" and description != " " and description != "0":
                                                    print ("Nao existe no dicionario")
                                                    naoLocalizados += 1
                                                    textPT = googleTranslateText(ruleTag.get_text(), dest='pt')
                                                    dicionario[rule] = textPT

                                        for characteristicsTag in catElement.find_all("characteristic"):
                                            if characteristicsTag["name"] in ["Abilities", "Description","Details","Capacity"]:
                                                # print profiles["name"],   characteristic["name"], characteristic["value"],characteristic

                                                #print characteristicsTag

                                                if characteristicsTag.has_attr('value') or 1==1:
                                                    #description = characteristicsTag["value"]
                                                    description=characteristicsTag.text.upper()
                                                    #print description
                                                    if description.upper() in dicionario.keys() and len(description) > 1:
                                                        descriptionPT =dicionario[description]
                                                        #print "Traduzindo>>>", cfile,"\n", description, "\n", descriptionPT
                                                        #print type(cat)
                                                        try:
                                                            #cat.find(text=description).replaceWith(descriptionPT)

                                                            #characteristicsTag["value"]=descriptionPT
                                                            characteristicsTag.string = descriptionPT
                                                        except Exception:
                                                            print ("falha na traducao")
                                                            # sys.exc_clear()
                                                    else:
                                                        if description!="" and description != "-" and description != "" and description != " " and description != "0":
                                                            print( "nao existe no dicionario")
                                                            naoLocalizados+=1
                                                            textPT = googleTranslateText(characteristicsTag.text, dest='pt')
                                                            dicionario[description] = textPT
        except Exception as e:
            print(str(e))


        print ('', cfile, 'Tradução Finalizada')
        #print cat
        newFile = destCatFileName
        xml = cat.prettify("utf-8")
        with open(newFile, "wb") as file:
            file.write(xml)
            file.close()

        new_dicionario = {}
        for k, v in dicionario.items():
            if k.upper() != v.upper():
                new_dicionario[k] = v

        try:
            jdumps = json.dumps(new_dicionario, indent=4, sort_keys=True, ensure_ascii=False)
            with open("C:\\Users\\evert\\Documents\\PycharmProjects\\WarhammerRosterTradutor\\dicionario.json","w",encoding='utf8') as file:
                file.write(jdumps)
        except Exception as e:
            print(e)
            print(type(new_dicionario))
            print(type(jdumps))
            exit(-1)

    #copia os arquivos cat para a pasta do repositorio
    copyCatToRepoDir(destPath, catRepoDir)
    #compacta
    compactCat(destPath)


    #newFile = "{projectDir}dicionario_new.json".format(projectDir=projectDir)
    #with open(newFile, "wb") as file:
     #   file.write(json.dumps(dicionarioNew,indent=4, sort_keys=True, ensure_ascii=False))
    new_dicionario={}
    for k,v in dicionario.items():
        if k.upper() != v.upper():
            new_dicionario[k]=v

    try:
        jdumps = json.dumps(new_dicionario,indent=4, sort_keys=True, ensure_ascii=False)
        with open("C:\\Users\\evert\\Documents\\PycharmProjects\\WarhammerRosterTradutor\\dicionario.json", "w",encoding='utf8') as file:
            file.write(jdumps)
    except Exception as e:
        print (e)
        print ( type(new_dicionario))
        print (type(jdumps))

    # try:
    #     with open("C:\\Users\\evert\\Documents\\PycharmProjects\\WarhammerRosterTradutor\\dicionario.json", "w") as file:
    #         file.write(json.dumps(dicionario,indent=4, sort_keys=True, ensure_ascii=False) )
    # except Exception as e:
    #     print (e)
    #     print ( type(dicionario))

    print ("Registros nao localizados no dicionario {i}".format(i=str(naoLocalizados)))


    if 1==1:
        ########################################################################################################################
        # Gera arquivo BSR
        ########################################################################################################################
        dtIdx.createIndexBsr()
        ########################################################################################################################




        ########################################################################################################################
        # Faz Upload do arquivo BSR
        ########################################################################################################################
        GitApi.uploadBsr()

    print( "qtd_traducoes_google",qtd_traducoes_google)
    print( "qtd_traducoes_literais",qtd_traducoes_literais)