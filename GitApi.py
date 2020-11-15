import requests
import json


def uploadBsr():
    # token 896b6df09bde1ec0d4f0778af03009e0e1a48c56
    print "Upload..."
    auth = ("evertonpendragon","Av@lon1985")
    headers = {'Authorization': 'token 896b6df09bde1ec0d4f0778af03009e0e1a48c56'}
    url="https://api.github.com/repos/BSDataBrasil/wh40kBR/releases/14823253/assets"

    a=requests.get (url,headers=headers)


    assets= json.loads(a.content)
    print type(assets),assets

    for  asset in assets:
        #print asset,type(asset)
        #asset=dict(asset)
        if  asset["name"]=="wh40kBR.bsr":
            #print asset
            bsrId=asset["id"]

            #print bsrId
            #delete
            #DELETE /repos/:owner/:repo/releases/assets/:asset_id
            url="https://api.github.com/repos/BSDataBrasil/wh40kBR/releases/assets/{bsrId}".format(bsrId=bsrId)
            #url="https://api.github.com/repos/BSDataBrasil/wh40kBR/releases/assets/13358556"

            print "Deletando arquivo existente..."
            #ret = requests.delete(url, auth=auth, headers=headers)
            ret = requests.delete(url,  headers=headers)

            #print ret, ret.text,ret.content
            #upload

    headers = {'Content-type': 'application/binary','Authorization': 'token 896b6df09bde1ec0d4f0778af03009e0e1a48c56'}#, 'Accept': 'text/plain'
    url="https://uploads.github.com/repos/BSDataBrasil/wh40kBR/releases/14823253/assets?name=wh40kBR.bsr"

    #posta arquivo criado por esse programa
    #files = {'file': open('./bsr/wh40kBR.bsr', 'rb')}

    #posta arquivo criado pelo Battle Scribe, utilizar esse caso haja problema com o criado por esse programa
    #files = {'file': open('C:/Users/evert/Documents/GitHub/BSDataBrasil/wh40kBR.bsr', 'rb')}
    f=open('C:/Users/evert/Documents/PycharmProjects/WarhammerRosterTradutor/bsr/wh40kBR.bsr', 'rb')
    files = {'file': f}
    #print filesd

    print "Upload do arquivo bsr..."
    #a=requests.post (url,auth=auth,headers=headers,data=f                )
    a = requests.post(url,   headers=headers, data=f)

    #a=requests.post (url,auth=auth  ,files=files                 )


    print a.text,a.content
    return 0