import requests
import json
import os
import zipfile as zip
"""
access token evertonpendragon
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

"""
def unzip(zfile,destDir):
    zip_ref = zip.ZipFile(zfile, 'r')
    zip_ref.extractall(destDir)
    zip_ref.close()
def uploadMasterFiles():
    #faz upload dos arquivos CAT e GST da pasta  C:\Users\evert\PycharmProjects\warhammerRosterTradutor\wh40kBR-master
    print ("Upload...")

    headers = {'Authorization': 'token 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'}

    headers['Content-type'] = 'application/binary'
    url="https://api.github.com/repos/BSDataBrasil/wh40kBR/releases/14823253/assets"

    a = requests.get(url, auth=None)

    assets= json.loads(a.content)
    #print type(assets),assets

    path = os.path.abspath(__file__)
    rootDir = os.path.dirname(path)
    # bsr_dir =

    br_master_dir = os.path.join(rootDir, 'wh40kBR-master')
    for f in os.listdir(br_master_dir):
        if f.endswith("catz") or f.endswith("gstz") :
            f_full_path = os.path.join(br_master_dir,f)
            for asset in assets:
                # print asset,type(asset)
                # asset=dict(asset)
                if asset["name"] in [f]:
                    bsrId = asset["id"]

                    # delete
                    url = "https://api.github.com/repos/BSDataBrasil/wh40kBR/releases/assets/{bsrId}".format(
                        bsrId=bsrId)

                    print("Deletando arquivo existente...",f)
                    print(url)
                    ret = requests.delete(url, headers=headers)

                    print(ret)
                    print(ret.text)
                    print(ret.content)
            url = "https://uploads.github.com/repos/BSDataBrasil/wh40kBR/releases/14823253/assets?name={fname}".format(fname=f)
            ff = open(f_full_path,'rb')
            print(f_full_path)
            print(url)
            print("Upload do arquivo {fname}...".format(fname=f))
            a = requests.post(url, headers=headers, data=ff)
            print(a.text, a.content)
            ff.close()
    return 0



def uploadBsr(tipo):
    # token bc39071775e1c39394ab2d8fa550283779c0ce88
    print ("Upload...")
    #auth = ("evertonpendragon","Av@lon1985")
    # auth = ("evertonpendragon","bc39071775e1c39394ab2d8fa550283779c0ce88"),
    #headers = {'Authorization': 'token bc39071775e1c39394ab2d8fa550283779c0ce88'}
    headers = {'Authorization': 'token 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'}

    #headers = {"Accept": "application/vnd.github.v3+json" }
    url="https://api.github.com/repos/BSDataBrasil/wh40kBR/releases/14823253/assets"

    #a=requests.get (url,headers=headers)
    a = requests.get(url, auth=None)

    assets= json.loads(a.content)
    #print type(assets),assets



    # headers = {'Content-type': 'application/binary',               'Authorization': 'token 896b6df09bde1ec0d4f0778af03009e0e1a48c56'}  # , 'Accept': 'text/plain'

    headers['Content-type'] =  'application/binary'



    #posta arquivo criado por esse programa
    #files = {'file': open('./bsr/wh40kBR.bsr', 'rb')}

    #posta arquivo criado pelo Battle Scribe, utilizar esse caso haja problema com o criado por esse programa
    #files = {'file': open('C:/Users/evert/Documents/GitHub/BSDataBrasil/wh40kBR.bsr', 'rb')}
    if tipo == "bsr":
        for asset in assets:
            # print asset,type(asset)
            # asset=dict(asset)
            if asset["name"] in ["wh40kBR.bsr"]:
                bsrId = asset["id"]

                # delete
                url = "https://api.github.com/repos/BSDataBrasil/wh40kBR/releases/assets/{bsrId}".format(bsrId=bsrId)

                print("Deletando arquivo existente...")
                print(url)
                ret = requests.delete(url, headers=headers)

                print(ret)
                print(ret.text)
                print(ret.content)
        url = "https://uploads.github.com/repos/BSDataBrasil/wh40kBR/releases/14823253/assets?name=wh40kBR.bsr"
        f=open('C:/Users/evert/PycharmProjects/WarhammerRosterTradutor/bsr/wh40kBR.bsr', 'rb')
        print("Upload do arquivo BSR...")
        a = requests.post(url, headers=headers, data=f)
        print(a.text, a.content)
        return 0

    elif tipo == 'bsi':
        for asset in assets:
            # print asset,type(asset)
            # asset=dict(asset)
            if asset["name"] in ["wh40k-10e.latest.bsi"]:
                bsrId = asset["id"]

                # delete
                url = "https://api.github.com/repos/BSDataBrasil/wh40kBR/releases/assets/{bsrId}".format(bsrId=bsrId)

                print("Deletando arquivo existente...")
                print(url)
                ret = requests.delete(url, headers=headers)

                print(ret)
                print(ret.text)
                print(ret.content)
        url = "https://uploads.github.com/repos/BSDataBrasil/wh40kBR/releases/14823253/assets?name=wh40k-10e.latest.bsi"
        f = open('C:/Users/evert/PycharmProjects/WarhammerRosterTradutor/BSI_BR/wh40k-10e.latest.bsi', 'rb')
        print("Upload do arquivo BSI...")
        a = requests.post(url, headers=headers, data=f)
        print(a.text, a.content)
        return 0
    #files = {'file': f}
    #print filesd


    #a = requests.post(url,  headers=headers, data=f)

    #a=requests.post (url,auth=auth  ,files=files                 )




#uploadBsr()