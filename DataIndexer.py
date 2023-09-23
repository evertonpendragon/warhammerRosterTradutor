import xml.etree.cElementTree as ET
import xml.dom.minidom  as minidom

from bs4 import BeautifulSoup
import zipfile as zip
import os

from bs4 import BeautifulSoup


def compactBsr(ppath):
    print ('\n\n\n\n',  'Compactando arquivo BSR')
    os.chdir(ppath)


    if os.path.exists("wh40kBR.bsr"):
        os.remove("wh40kBR.bsr")

    destCatFiles = os.listdir('.')
    destCatFiles = filter(lambda x: x[-1] != 'z', destCatFiles)


    for f in destCatFiles:
        #print (f)
        compression = zip.ZIP_DEFLATED
        with zip.ZipFile("wh40kBR.bsr", mode='a') as zip_ref:
            zip_ref.write( f, compress_type=compression)
            zip_ref.close()
        os.remove(f)
def compactBsi(ppath):
    print ('\n\n\n\n',  'Compactando arquivo BSI')
    os.chdir(ppath)


    if os.path.exists("wh40k-10e.latest.bsi"):
        os.remove("wh40k-10e.latest.bsi")

    destCatFiles = os.listdir('.')
    destCatFiles = filter(lambda x: x[-1] != 'z', destCatFiles)


    for f in destCatFiles:
        #print (f)
        compression = zip.ZIP_DEFLATED
        with zip.ZipFile("wh40k-10e.latest.bsi", mode='a') as zip_ref:
            zip_ref.write( f, compress_type=compression)
            zip_ref.close()
        os.remove(f)

def prettify(  elem ):
    """Return a pretty-printed XML string for the Element.
    """
    rough_string = ET.tostring(elem, encoding='UTF-8', method='xml')
    reparsed = minidom.parseString(rough_string)
    return reparsed.toprettyxml(indent="\t" , newl="\n",encoding='UTF-8'  )

def unzip(zfile,destDir):
    zip_ref = zip.ZipFile(zfile, 'r')
    zip_ref.extractall(destDir)
    zip_ref.close()

class DataIndexer():
    def __init__(self):
        self.data = []

    def indexInitializer(self):
        dataIndex = ET.Element("dataIndex" )
        #dataIndex
        dataIndex.attrib["battleScribeVersion"]="2.03" #alterar para pegar automaticamente
        dataIndex.attrib["name"] = "wh40kPTBR - 10th Edition"
        #dataIndex.attrib["indexUrl"] = "https://github.com/evertonpendragon/warhammerRosterTradutor/releases/download/10e/wh40k-10e.latest.bsi"
        #dataIndex.attrib["indexUrl"] = "https://github.com/BSDataBrasil/wh40kBR/releases/download/latest/wh40k-10e.latest.bsi"
        dataIndex.attrib["xmlns"] = "http://www.battlescribe.net/schema/dataIndexSchema"
        return dataIndex

    def indexUpdateIndexUrl(self, dataIndex):
        #dataIndex = ET.Element("dataIndex" )
        #dataIndex
        dataIndex.attrib["indexUrl"] = "https://github.com/BSDataBrasil/wh40kBR/releases/download/latest/wh40k-10e.latest.bsi"



    def indexRepositoryUrls( self, dataIndex ):
        repositoryUrls = ET.SubElement(dataIndex, "repositoryUrls")
        #return repositoryUrls

    def indexDataIndexEntries(self,dataIndex ):
        dataIndexEntries = ET.SubElement(dataIndex, "dataIndexEntries")
        return dataIndexEntries


    def dataIndexEntry(self,dataIndexEntries,filePath, dataType , dataId,dataName ,dataBattleScribeVersion, dataRevision):
        dataIndexEntry = ET.SubElement(dataIndexEntries, "dataIndexEntry")
        dataIndexEntry.attrib["filePath"] = filePath
        dataIndexEntry.attrib["dataType"] = dataType
        dataIndexEntry.attrib["dataId"] = dataId
        dataIndexEntry.attrib["dataName"] = dataName
        dataIndexEntry.attrib["dataBattleScribeVersion"] = dataBattleScribeVersion
        dataIndexEntry.attrib["dataRevision"] = dataRevision
        #return dataIndex


def createIndexBsr():
    di = DataIndexer()

    dataIndex = di.indexInitializer()
    #di.indexRepositoryUrls(dataIndex)
    dataIndexEntries = di.indexDataIndexEntries(dataIndex)

    path = os.path.abspath(__file__)
    rootDir = os.path.dirname(path)
    #bsr_dir =

    bsrDir = os.path.join(rootDir , "bsr")
    brDir  = os.path.join(rootDir , 'wh40kBR-master')


    if not os.path.exists(bsrDir):
        os.mkdir(bsrDir)


    for file in os.listdir(brDir):

        if file.endswith( 'z'):
            #print (file)
            unzip( os.path.join(brDir,file),bsrDir)

    for cfile in os.listdir(bsrDir):
        CatFileNameFullPath = os.path.join(bsrDir ,cfile)
        try:
            with open(CatFileNameFullPath, "r", encoding="utf8") as file: #, encoding   ="utf8"
                catFile = file.read()
                file.close()
            cat = BeautifulSoup(catFile, "xml")
        except Exception as e:
            print ("ERROR")
            print("DIR",bsrDir)
            print("FILE",cfile)
            print("ERROR",e)
            raise(e)


        elements = cat.find_all("catalogue")
        dataType = "catalogue"

        if elements == []:
            elements = cat.find_all("gameSystem")
            dataType = "gameSystem"

        for catalogue in elements:
            filePath = cfile+"z"
            dataId = catalogue["id"]
            dataName = catalogue["name"]
            dataBattleScribeVersion = catalogue["battleScribeVersion"]
            dataRevision = catalogue["revision"]

            di.dataIndexEntry(dataIndexEntries,
                              filePath=filePath,
                              dataType=dataType,
                              dataId=dataId,
                              dataName=dataName,
                              dataBattleScribeVersion=dataBattleScribeVersion,
                              dataRevision=dataRevision)

            #authorContact
            # authorName
            # authorUrl="https://discord.gg/KqPVhds" battleScribeVersion="2.02" gameSystemId="49b6-bc6f-0390-1e40" gameSystemRevision="1" id="30b2-6f64-b85e-b4dc" library="false" name="Aeldari - Craftworlds-BR" revision="78" xmlns="http://www.battlescribe.net/schema/catalogueSchema"





    #di.dataIndexEntry(dataIndexEntries, filePath="Warhammer_40.000_8th_Edition.gst" ,dataType="gamesystem" ,dataId="49b6-bc6f-0390-1e40", dataName="Warhammer 40,000 8th Edition-BR", dataBattleScribeVersion="2.01", dataRevision="74")
    # di.dataIndexEntry(dataIndexEntries, filePath="Warhammer_40.000_8th_Edition.gst" ,dataType="gamesystem" ,dataId="49b6-bc6f-0390-1e40", dataName="Warhammer 40,000 8th Edition-BR", dataBattleScribeVersion="2.01", dataRevision="74")
    # di.dataIndexEntry(dataIndexEntries, filePath="Warhammer_40.000_8th_Edition.gst" ,dataType="gamesystem" ,dataId="49b6-bc6f-0390-1e40", dataName="Warhammer 40,000 8th Edition-BR", dataBattleScribeVersion="2.01", dataRevision="74")
    # di.dataIndexEntry(dataIndexEntries, filePath="Warhammer_40.000_8th_Edition.gst" ,dataType="gamesystem" ,dataId="49b6-bc6f-0390-1e40", dataName="Warhammer 40,000 8th Edition-BR", dataBattleScribeVersion="2.01", dataRevision="74")

    tree =   prettify(dataIndex)
    indexFile=os.path.join(bsrDir,"index.xml")

    print ("Criando", indexFile)
    with open(indexFile,'wb') as xmlfile:
        xmlfile.write(tree)



    compactBsr(bsrDir)

    createBSI()

    """dataIndexEntries = ET.SubElement(dataIndex, "dataIndexEntries")
    dataIndexEntries.attrib["filePath"]="Warhammer_40.000_8th_Edition.gst"
    dataIndexEntries.attrib["dataType"]="gamesystem"
    dataIndexEntries.attrib["dataId"]="49b6-bc6f-0390-1e40"
    dataIndexEntries.attrib["dataName"]="Warhammer 40,000 8th Edition-BR"
    dataIndexEntries.attrib["dataBattleScribeVersion"]="2.01"
    dataIndexEntries.attrib["dataRevision"]="74"""



    #os.remove(bsrDir)
    #os.rmdir(bsrDir)

def createBSI():
    # limpando diretorio
    for f in os.listdir('C:\\Users\\evert\\PycharmProjects\\warhammerRosterTradutor\\BSI_BR'):
        f = os.path.join("C:\\Users\\evert\\PycharmProjects\\warhammerRosterTradutor\\BSI_BR", f)
        os.remove(f)

    di = DataIndexer()


    dataIndex = di.indexInitializer()
    #di.indexRepositoryUrls(dataIndex)
   # dataIndex.indexUpdateIndexUrl(dataIndex)
    dataIndex.attrib["indexUrl"] = "https://github.com/BSDataBrasil/wh40kBR/releases/download/latest/wh40k-10e.latest.bsi"
    dataIndexEntries = di.indexDataIndexEntries(dataIndex)


    path = os.path.abspath(__file__)
    rootDir = os.path.dirname(path)
    #bsr_dir =

    bsi_br_dir = os.path.join(rootDir , "BSI_BR")
    br_master_dir  = os.path.join(rootDir , 'wh40kBR-master')


    if not os.path.exists(bsi_br_dir):
        os.mkdir(bsi_br_dir)


    for file in os.listdir(br_master_dir):
        if file.endswith( 'z'):
            #print (file)
            unzip( os.path.join(br_master_dir,file),bsi_br_dir)

    for cfile in os.listdir(bsi_br_dir):
        CatFileNameFullPath = os.path.join(bsi_br_dir ,cfile)
        try:
            with open(CatFileNameFullPath, "r", encoding="utf8") as file: #, encoding   ="utf8"
                catFile = file.read()
                file.close()
            cat = BeautifulSoup(catFile, "xml")
        except Exception as e:
            print ("ERROR")
            print("DIR",bsi_br_dir)
            print("FILE",cfile)
            print("ERROR",e)
            raise(e)


        elements = cat.find_all("catalogue")
        dataType = "catalogue"

        if elements == []:
            elements = cat.find_all("gameSystem")
            dataType = "gameSystem"

        for catalogue in elements:
            filePath = cfile + "z" #nao tenho certeza se deve ter o z ou nao 2023.08.17
            dataId = catalogue["id"]
            dataName = catalogue["name"]
            dataBattleScribeVersion = catalogue["battleScribeVersion"]
            dataRevision = catalogue["revision"]

            di.dataIndexEntry(dataIndexEntries,
                              filePath=filePath,
                              dataType=dataType,
                              dataId=dataId,
                              dataName=dataName,
                              dataBattleScribeVersion=dataBattleScribeVersion,
                              dataRevision=dataRevision)

            #authorContact
            # authorName
            # authorUrl="https://discord.gg/KqPVhds" battleScribeVersion="2.02" gameSystemId="49b6-bc6f-0390-1e40" gameSystemRevision="1" id="30b2-6f64-b85e-b4dc" library="false" name="Aeldari - Craftworlds-BR" revision="78" xmlns="http://www.battlescribe.net/schema/catalogueSchema"





    #di.dataIndexEntry(dataIndexEntries, filePath="Warhammer_40.000_8th_Edition.gst" ,dataType="gamesystem" ,dataId="49b6-bc6f-0390-1e40", dataName="Warhammer 40,000 8th Edition-BR", dataBattleScribeVersion="2.01", dataRevision="74")
    # di.dataIndexEntry(dataIndexEntries, filePath="Warhammer_40.000_8th_Edition.gst" ,dataType="gamesystem" ,dataId="49b6-bc6f-0390-1e40", dataName="Warhammer 40,000 8th Edition-BR", dataBattleScribeVersion="2.01", dataRevision="74")
    # di.dataIndexEntry(dataIndexEntries, filePath="Warhammer_40.000_8th_Edition.gst" ,dataType="gamesystem" ,dataId="49b6-bc6f-0390-1e40", dataName="Warhammer 40,000 8th Edition-BR", dataBattleScribeVersion="2.01", dataRevision="74")
    # di.dataIndexEntry(dataIndexEntries, filePath="Warhammer_40.000_8th_Edition.gst" ,dataType="gamesystem" ,dataId="49b6-bc6f-0390-1e40", dataName="Warhammer 40,000 8th Edition-BR", dataBattleScribeVersion="2.01", dataRevision="74")

    tree =   prettify(dataIndex)
    indexFile=os.path.join(bsi_br_dir,"wh40k-10e.latest.xml")

    #removendo arquivos desnecessarios
    for f in os.listdir('C:\\Users\\evert\\PycharmProjects\\warhammerRosterTradutor\\BSI_BR'):
        if f != "wh40k-10e.latest.xml":
            f = os.path.join("C:\\Users\\evert\\PycharmProjects\\warhammerRosterTradutor\\BSI_BR", f)
            os.remove(f)

    print ("Criando", indexFile)
    with open(indexFile,'wb') as xmlfile:
        xmlfile.write(tree)



    compactBsi(bsi_br_dir)

#alterar as versoes dos arquivos


#createIndexBsr()