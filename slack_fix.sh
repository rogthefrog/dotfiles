# Workaround to get slack to open workspaces correctly.
# Problem and workarond concept as described here:
# https://stackoverflow.com/questions/70867064/signing-into-slack-desktop-not-working-on-4-23-0-64-bit-ubuntu
# Usage: Run this script, open slack as normal, and attempt to log into workspaces as normal. Once done, kill the script.

while sleep .1; do 
        line=$(ps ax | grep slack | grep -v grep | grep magic | awk '{ print $NF }')
        WD=$(echo $line | cut -d '/' -f 3 | tr [:lower:] [:upper:])
        LN=$(echo $line | cut -d '/' -f 5)
        if [ "$WD" != "" ]; then
                echo "got $line"
                line2="slack://$WD/magic-login/$LN"
                echo "Attempting to open $line2"
                /usr/lib/slack/slack --enable-crashpad $line2
        fi
done | grep -v "^$"
