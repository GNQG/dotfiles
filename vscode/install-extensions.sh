#!/bin/sh
awk -v RS='\n|\r\n' '{print}' extensions.txt | xargs -I _ code --install-extension _
