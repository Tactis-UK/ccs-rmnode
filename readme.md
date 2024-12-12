# ccs-rmnode

CCS Remote Management Toolkit for AD winRM & PSRemoting

### Recommendations

* Have a krb5.conf file setup for access to the required domains
* Have the Certus.OpTools repository locally available to mount in the container

### Instructions

1. Launch the container

`docker run -it --name ccs-rmnode -v ./sysops:/root/sysops -v ./krb5.conf:/etc/krb5.conf tactis/ccs-rmnode`

2. Import the OpTools repository

`Import-Module ~/sysops/Certus.Optools.psm1`

3. Initialise your kerberos authentication

`kinit user@DOMAIN.COM`

4. The OpTools features should now be available to run on the selected domain.