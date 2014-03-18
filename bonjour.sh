#!/bin/bash
BASE64="`wget -qO- http://www.bonjourmadame.fr | egrep -o 'c="http://.*.media.tumblr.com/[^"'"'"']*"' | sed -e 's/c=//' -e 's/["'"'"']//g' | base64 -w 0`"
echo "...\n\n\n\033[31mBONJOUR MADAME ! \033[0m (et merci Arnaud)\nfap fap fap fap\n\n\n..."
chromium http://koalastothemax.com/?$BASE64 &
