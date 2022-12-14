#!/bin/bash

openssl req \
    -newkey rsa:2048 \
    -x509 \
    -nodes \
    -keyout ./server.key \
    -new \
    -out ./server.crt \
    -config ./openssl-custom.cnf \
    -sha256 \
    -days 7300;

sudo security add-trusted-cert -d -r trustRoot -k /Library/Keychains/System.keychain ./server.crt
