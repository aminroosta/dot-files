TOUCHPADID=13    # find touchpad id with "xinput" and change this id

SYNSTATE=$(xinput list-props "$TOUCHPADID" | grep "Device Enabled" | grep -Eo '.$')
if [ $SYNSTATE = 0 ]; then 
        xinput set-prop "$TOUCHPADID" "Device Enabled" 1
    else 
        xinput set-prop "$TOUCHPADID" "Device Enabled" 0
fi