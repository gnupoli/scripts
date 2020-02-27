#!/bin/bash
USER=				#usuario para logearse en el host	
HOST=				#dirección del host
HPORT=	 			#puerto del host ssh
DPORT=	 			#puerto que vamos a usar para proxyar socks
RPORT=	 			#puerto remoto que apunta a nuestro LPORT
LPORT=	 			#puerto local al que apunta RPORT
 while true; do
    NOW=$(date +"%d-%m-%y %H:%M:%S")
    echo "$NOW: Conectan2"
    autossh -o ExitOnForwardFailure="yes" -o ServerAliveInterval=240 -R $RPORT:localhost:$LPORT $USER@$HOST -p$HPORT -D$DPORT -N
    NOW=$(date +"%d-%m-%y %H:%M:%S")
    echo "$NOW: Petó. Aguantá"
    sleep 5
 done
