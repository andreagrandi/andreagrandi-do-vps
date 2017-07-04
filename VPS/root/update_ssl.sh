#!/bin/bash
/root/certbot-auto certonly -n --webroot -w /var/www/andreagrandi.it/ -d www.andreagrandi.it -d andreagrandi.it -d irc.andreagrandi.it --email a.grandi@gmail.com --renew-by-default --agree-tos && service nginx reload
cat /etc/letsencrypt/live/www.andreagrandi.it/{privkey,cert,chain}.pem > /home/znc-admin/.znc/znc.pem
