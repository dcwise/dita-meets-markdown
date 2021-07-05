 DITA_OT=bin/dita-ot-3.3.3

echo "Downloading DITA-OT"
if [[ ! -e bin/dita-ot.zip ]];
then
  mkdir bin
  
  curl -q -L https://github.com/dita-ot/dita-ot/releases/download/3.3.3/dita-ot-3.3.3.zip --output bin/dita-ot.zip
  
  ls -l bin/dita-ot.zip
  
  unzip -q bin/dita-ot.zip -d bin/
fi

echo "====================================="
echo "download WebHelp plugin"
echo "====================================="

curl -q -L https://mirror.oxygenxml.com/InstData/WebHelp/oxygen-webhelp-dot-3.x.zip  --output bin/oxygen-webhelp-dot-2.x.zip


echo "====================================="
echo "extract WebHelp to DITA-OT"
echo "====================================="
unzip -q bin/oxygen-webhelp-dot-2.x.zip -d bin/

cp -R bin/com.oxygenxml.* $DITA_OT/plugins/

pwd

cp scripts/publishing/licensekey.txt $DITA_OT/plugins/com.oxygenxml.webhelp.responsive/licensekey.txt


# Send parameters for the Webhelp styling.
export ANT_OPTS="$ANT_OPTS -Dwebhelp.fragment.welcome='$WELCOME'"



echo "====================================="
echo "integrate plugins"
echo "====================================="
cd $DITA_OT
bin/ant -f integrator.xml
cd ../..

pwd

sh $DITA_OT/bin/dita \
    --format=webhelp-responsive \
    --input=manualset.ditamap \
    --output=bin/out
	-Dwebhelp.logo.image=https://www.xiaoshouyi.com/wp-content/uploads/2020/11/logo_2020_@2X_b.png
	-Dwebhelp.publishing.template=xsyCENTEROFEXCELLENCE.zip
