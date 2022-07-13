WORKING_DIRECTORY="$HOME/mailsignature"
DESTINATION_FILE="$WORKING_DIRECTORY/mailsig-usyd-short.html"
THIS_UUID="$(uuidgen)"

cat $WORKING_DIRECTORY/fragments/10-top.html > $DESTINATION_FILE
echo "<strong>Dr. Blair Wang</strong> | Lecturer" >> $DESTINATION_FILE
echo "<br /><strong>The University of Sydney Business School</strong>" >> $DESTINATION_FILE
echo "<br />Business Information Systems" >> $DESTINATION_FILE
echo "<br /><br />" >> $DESTINATION_FILE
echo $THIS_UUID >> $DESTINATION_FILE

cat $WORKING_DIRECTORY/fragments/90-bottom.html >> $DESTINATION_FILE
echo "Regenerated email signature with UUID = $THIS_UUID"
