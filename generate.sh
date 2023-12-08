WORKING_DIRECTORY="$HOME/mailsignature"
DESTINATION_FILE="$WORKING_DIRECTORY/mailsig-galway-short.html"
THIS_UUID="$(uuidgen)"

cat $WORKING_DIRECTORY/fragments/10-top.html > $DESTINATION_FILE
echo "<div id='PersonName'>Blair Wang</div>" >> $DESTINATION_FILE
echo "<span id='PersonRole'>Léachtóir | Lecturer</span>" >> $DESTINATION_FILE
echo "<br />" >> $DESTINATION_FILE
echo "<br />Córais Faisnéise Gnó, Scoil Ghnó agus Eacnamaíochta J.E. Cairnes, Ollscoil na Gaillimhe" >> $DESTINATION_FILE
echo "<br />Business Information Systems, J.E. Cairnes School of Business and Economics, University of Galway, Ireland" >> $DESTINATION_FILE
echo "<br />" >> $DESTINATION_FILE
echo "<br /><span class='smalltext'>Uimhir Carthanachta Cláraithe/Registered Charity Number 20002107</span>" >> $DESTINATION_FILE
echo "<br /><span class='smalltext'>Message ref. " >> $DESTINATION_FILE
echo $THIS_UUID >> $DESTINATION_FILE
echo "</span>" >> $DESTINATION_FILE

cat $WORKING_DIRECTORY/fragments/90-bottom.html >> $DESTINATION_FILE
echo "Regenerated email signature with UUID = $THIS_UUID"
