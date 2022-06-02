#!/bin/bash

docker run -itd --name openldap \
    -e LDAP_ADMIN_USERNAME=admin \
    -e LDAP_ADMIN_PASSWORD=admin12345!@ \
    -e LDAP_ROOT=dc=wsskorea,dc=cloud \
    -e LDAP_CONFIG_ADMIN_ENABLE=yes \
    -e LDAP_CONFIG_ADMIN_USERNAME=admin \
    -e LDAP_CONFIG_ADMIN_PASSWORD=admin12345!@ \
    -e LDAP_CUSTOM_LDIF_DIR=/ldifs \
    -v /home/user/email-project/ldap/openldap/ldifs/:/ldifs/ \
    -p 1389:1389 \
    -p 1636:1636 \
    bitnami/openldap:2.6.2-debian-10-r23