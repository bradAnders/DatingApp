## Enable SSL

0. Generate self-signed certificate
```sh
$ ~/AppData/Local/Programs/Git/usr/bin/openssl.exe req \
    -newkey rsa:2048 \
    -x509 \
    -nodes \
    -keyout server.key \
    -new \
    -out server.crt \
    -sha256 \
    -days 7300
```
1. Double click on the certificate (server.crt)
2. Click on the button “Install Certificate …”
3. Select whether you want to store it on user level or on machine level
4. Click “Next”
5. Select “Place all certificates in the following store”
6. Click “Browse”
7. Select “Trusted Root Certification Authorities”
8. Click “Ok”
9. Click “Next”
10. Click “Finish”

If you get a prompt, click “Yes”