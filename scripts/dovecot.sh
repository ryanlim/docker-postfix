#!/bin/bash

rm -f /run/dovecot/master.pid
exec /usr/sbin/dovecot -c /etc/dovecot/dovecot.conf -F
