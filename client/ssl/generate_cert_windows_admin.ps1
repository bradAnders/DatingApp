try {
    openssl version;
    Write-Host "openssl installed";
} catch {
    Write-Host "openssl not installed";
    choco install openssl -y;
    $env:path = $env:path + ";C:\Program Files\OpenSSL-Win64\bin"; 
    refreshenv;
};

openssl req `
    -newkey rsa:2048 `
    -x509 `
    -nodes `
    -keyout server.key `
    -new `
    -out server.crt `
    -config ./openssl-custom.cnf `
    -sha256 `
    -days 7300; 


Import-Certificate -FilePath .\server.crt -CertStoreLocation Cert:\LocalMachine\Root;