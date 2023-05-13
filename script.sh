#!/bin/bash

echo "Esse script irá manter o servidor ligado sempre que ele for fechado ou crashar!"
while true
do
    java -Dlog4j2.formatMsgNoLookups=true -Xms13G -Xmx13G -Dterminal.jline=false -Dcom.mojang.eula.agree=true -Dterminal.ansi=true -jar server.jar true
    echo "($(date +%T)) Puxa vida, o servidor fechou! Reiniciando..."
done
