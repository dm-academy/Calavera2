
#!/bin/bash
### Taken from https://exchange.nagios.org/directory/Distributions/Packaged-Distributions/Nagios-Installer-script-for-Ubuntu-2FDebian-2FRHEL-2FCentOS/details
### added some things to make work in dockers that are stripped down
### JasonMoldan

### pre work
apt-get update
apt-get upgrade -y
#apt-get install --yes vim net-tools apt-utils
### removed vim net-tools apt-utils -> these were just usefull for debugging

########################################################
#### Installation Starts ######
########################################################

                                                              
                                apt-get -y  install apache2 build-essential wget perl \
                                apt-get -y install openssl supervisor
                                apt-get -y  install nagios-plugins
                                ##apt-get -y  install nagios3
                                DEBIAN_FRONTEND=noninteractive apt-get -y install nagios3
                                #Sets password to password  
                                htpasswd -cb /etc/nagios3/htpasswd.users nagiosadmin password
                                cp Calavera2/nervios/*.cfg /etc/nagios3/conf.d/
                                
                    
                                     
                                apt-get -y  install nagios-plugins-basic nagios3-core nagios-plugins-standard
                                apt-get -y install nagios-plugins-extra nagios-snmp-plugins nagios-nrpe-plugin   nagios3-cgi nagios-plugins-contrib
                                apt-get -y  install libssl-dev openssh-server openssh-client ntpdate snmp smbclient libldap-2.4-2 libldap2-dev  unzip
                                sed -i 's/check_external_commands=0/check_external_commands=1/g' /etc/nagios3/nagios.cfg

                                /usr/sbin/usermod -a -G www-data nagios
                                chmod -R g+wx /var/lib/nagios3/

                                /etc/init.d/nagios3 restart
                                sleep 2
                                /etc/init.d/apache2 restart
                                sleep 2
                               
                                echo -e "\n\tNow Nagios is ready to be used via: http://$IP/nagios3"

                                #Fix Nagios apache permissions
                                 dpkg-statoverride --update --add nagios www-data 2710 /var/lib/nagios3/rw
                                 dpkg-statoverride --update --add nagios nagios 751 /var/lib/nagios3

### ADD HERE - git clone and pump the hosts files into place
##cp Calavera2/nervios/*.cfg /etc/nagios3/conf.d/

exit 0

