#/usr/bin/bash
domain=$1
subs=$1"_subs"
assetfinder $domain --subs-only > $subs; awk '!a[$0]++' $subs; cat $subs | httprobe | tee hosts 
