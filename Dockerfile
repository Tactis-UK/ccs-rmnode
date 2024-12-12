FROM mcr.microsoft.com/powershell

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get -yq install \
    krb5-user \
    nano \
    iputils-ping \
    dnsutils \
    ansible
RUN pwsh -command "Install-Module ansiblevault,sqlserver,Microsoft.PowerShell.SecretManagement,Microsoft.PowerShell.SecretStore,pswsman -Force"
RUN pwsh -command "Install-WSMan"

ENV EDITOR nano

WORKDIR /root

ENTRYPOINT [ "/bin/pwsh" ]