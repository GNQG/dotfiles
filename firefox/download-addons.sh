#!/bin/sh
mkdir -p extensions \
    &&  awk -F ',' -v RS='\n|\r\n' \
            '{
                if(NR>1){
                    print "https://addons.mozilla.org/firefox/downloads/latest/" $1 "/"
                    print "extensions/" $2 ".xpi"
                }
             }' \
            addons.csv \
    |   sed -e "s/'/'\\\\''/g; s/^\(.*\)\$/'\\1'/g" \
    |   tr "\n" "\0" \
    |   xargs -0 -n 2 sh -c 'eval "wget $0 -O $1"'
