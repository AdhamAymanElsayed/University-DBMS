TotalSpace=$(systeminfo | grep 'Total Physical Memory' | awk '{ print $4 }' | tr -d ',')
AvailableSpace=$(systeminfo | grep 'Available Physical Memory' | awk '{ print $4 }' | tr -d ',')
UsedSpace=$((TotalSpace - AvailableSpace))
echo "Used Space = $UsedSpace MB"

Percentt=$(((AvailableSpace*100)/UsedSpace))
THRESHOLDD=60
if [[ $Percentt -gt $THRESHOLDD ]]; then
   echo "ALERT !! Memory consumption has exceeded $THRESHOLDD% , Current Consumption : $Percentt%"
else
   echo "Memory consumption is safe and within the threshold : $Percentt%"
fi