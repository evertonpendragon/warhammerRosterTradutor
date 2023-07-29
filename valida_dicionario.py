import h2.utilities
import json
import re

with open('dicionario.json', "r") as file:
    cont = 0
    for line in file.readlines():
        if  re.search("(\".*\":\s*\".*\")",line):
            if re.search("(\".*\":\s*\".*\")(?=,)*",line):
                j = re.search("(\".*\":\s*\".*\")(?=,)*",line).group(0)
                # j =  '{' + line.replace("\n","") + '}'
                j =  '{' + j  + '}'
                try:
                    a = json.loads(j)

                    for k,v in a.items():
                        if k.upper() == v.upper():
                            print(k,"\n",v)
                            cont += 1
                except Exception as e:
                    print (e)
                    print (j)
                    pass
    print (cont)

with open('dicionario.json', "r") as file:
    dicionario = json.loads(file.read())
    file.close()

new_dicionario={}
for k,v in dicionario.items():
    if k.upper() != v.upper():
        new_dicionario[k]=v

try:
    jdumps = json.dumps(new_dicionario,indent=4, sort_keys=True, ensure_ascii=False)
    with open("dicionario_teste.json", "wb") as file:
        file.write(jdumps.encode('utf-8'))
except Exception as e:
    print (e)
    print ( type(new_dicionario))
    print (type(jdumps))