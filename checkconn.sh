#!/bin/bash
sed -i 's#SRVIP#'"$1"'#' /etc/ipsec.conf
sed -i 's#SKEY#'"$2"'#' /etc/ipsec.secrets
ipsec start --nolog
sleep 2
ipsec up home > /dev/null
curl https://wtfismyip.com/text
