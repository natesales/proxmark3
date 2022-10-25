#!/bin/bash

CRED=NateSales
PM3=/home/nate/apps/proxmark3/pm3

$PM3 -c "mem spiffs dump -s "$CRED".bin -d /tmp/replay-credential.bin ; \
         hf iclass eload -f /tmp/replay-credential.bin ; \
         hf iclass sim -t 3"

rm -f /tmp/replay-credential.bin
