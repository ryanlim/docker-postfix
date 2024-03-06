#!/bin/bash

SRS_DOMAIN="$(postconf -h mydomain)"

source /etc/default/postsrsd

exec /usr/sbin/postsrsd -f "${SRS_FORWARD_PORT}" -r "${SRS_REVERSE_PORT}" \
  -d "${SRS_DOMAIN}" -s "${SRS_SECRET}" -a "${SRS_SEPARATOR}" \
  -n "${SRS_HASHLENGTH}" -N "${SRS_HASHMIN}" -u "${RUN_AS}" \
  -l "${SRS_LISTEN_ADDR}" -c "${CHROOT}" "-X${SRS_EXCLUDE_DOMAINS}"

