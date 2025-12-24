#!/bin/bash

mkdir -p /run/dovecot
rm -f /run/dovecot/master.pid
rm -f /run/dovecot/fullchain.pem /run/dovecot/cert.pem /run/dovecot/privkey.pem
ln -s /etc/letsencrypt/live/$LETSENCRYPT_CERT_NAME/fullchain.pem /run/dovecot/fullchain.pem
ln -s /etc/letsencrypt/live/$LETSENCRYPT_CERT_NAME/cert.pem /run/dovecot/cert.pem
ln -s /etc/letsencrypt/live/$LETSENCRYPT_CERT_NAME/privkey.pem /run/dovecot/privkey.pem
exec /usr/sbin/dovecot -c /etc/dovecot/dovecot.conf -F
