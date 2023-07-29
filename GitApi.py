import requests
import json


"""
access token evertonpendragon
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

"""

def uploadBsr():
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

    for  asset in assets:
        #print asset,type(asset)
        #asset=dict(asset)
        if  asset["name"]=="wh40kBR.bsr":
            # print json.dump(asset)
            bsrId=asset["id"]

            #print bsrId
            #delete
            #DELETE /repos/:owner/:repo/releases/assets/:asset_id
            #DELETE /repos/{owner}/{repo}/releases/assets/{asset_id}
            url="https://api.github.com/repos/BSDataBrasil/wh40kBR/releases/assets/{bsrId}".format(bsrId=bsrId)
            #url="https://api.github.com/repos/BSDataBrasil/wh40kBR/releases/assets/13358556"

            print ("Deletando arquivo existente...")
            #ret = requests.delete(url, auth=auth, headers=headers)
            print (url)
            ret = requests.delete(url,  headers=headers)
            # ret = requests.delete(url )

            print (ret)
            print (ret.text)
            print (ret.content)
            #upload

    # headers = {'Content-type': 'application/binary',               'Authorization': 'token 896b6df09bde1ec0d4f0778af03009e0e1a48c56'}  # , 'Accept': 'text/plain'

    headers['Content-type'] =  'application/binary'

    url="https://uploads.github.com/repos/BSDataBrasil/wh40kBR/releases/14823253/assets?name=wh40kBR.bsr"

    #posta arquivo criado por esse programa
    #files = {'file': open('./bsr/wh40kBR.bsr', 'rb')}

    #posta arquivo criado pelo Battle Scribe, utilizar esse caso haja problema com o criado por esse programa
    #files = {'file': open('C:/Users/evert/Documents/GitHub/BSDataBrasil/wh40kBR.bsr', 'rb')}
    f=open('C:/Users/evert/Documents/PycharmProjects/WarhammerRosterTradutor/bsr/wh40kBR.bsr', 'rb')
    files = {'file': f}
    #print filesd

    print ("Upload do arquivo bsr...")
    #a=requests.post (url,auth=auth,headers=headers,data=f                )
    a = requests.post(url,  headers=headers, data=f)
    #a = requests.post(url,  headers=headers, data=f)

    #a=requests.post (url,auth=auth  ,files=files                 )


    print (a.text,a.content)
    return 0

#uploadBsr()