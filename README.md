# php-le-certupdate
Update your Letsencrypt certs using php-cli

## Usage
- Setup a mysql database using the letsencrypt-update.sql file as template
- Define the database and your contact email address in the top of the letsencrypt-update file
- Add the file to your root's crontab for @daily usage
- Edit or modify entries in the database as following:
  - name is just an identifier for the cert
  - webroot is set to the documentroot of the site (needed for HTTP-01)
  - active: whether to maintain the cert or not
  - domains contains a list of domains and alternates to use for the cert
  - nsupdate points to the private rdns key to use with nsupdate (needed for DNS-01)
  - renewdays tells the script how long before expire of the cert it should be renewed
 
Certs are deposited in /etc/ssl/<name>/

## Credits
https://github.com/skoerfgen/ACMECert
