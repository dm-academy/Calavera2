
#!/bin/bash
### Taken from https://exchange.nagios.org/directory/Distributions/Packaged-Distributions/Nagios-Installer-script-for-Ubuntu-2FDebian-2FRHEL-2FCentOS/details
### added some things to make work in dockers that are stripped down
### JasonMoldan

### pre work
apt-get update
apt-get install --yes vim net-tools apt-utils

########################################################
#### Installation Starts ######
########################################################

chk_user()
{
        if [ $(whoami) != "root" ]
        then
                echo -e "\n\t\033[44;37;5m###### WARNING ######\033[0m"
                echo -e "\t${txtylw}${txtbld}Sorry ${txtgrn}$(whoami)${txtrst}${txtylw}${txtbld}, you must login as root user to run this script.${txtrst}"
                echo -e "\t${txtylw}${txtbld}Please become root user using 'sudo -s' and try again.${txtrst}"
                echo -e
                echo -e "\t${txtred}${txtbld}Quitting Installer.....${txtrst}\n"
                sleep 3
        exit 1
        fi
}

### Ubuntu/Debian type servers. ####
chk_user
# Remove crap to get Dockerfile to work
#rm -rf /etc/init.d/apache2
#rm -rf /etc/init.d/nagios3
                                apt-get update
                                apt-get upgrade -y
                                apt-get -y  install apache2 build-essential wget perl openssl supervisor
                                apt-get -y  install nagios-plugins
                                apt-get -y  install nagios3
                                apt-get -y  install nagios-plugins-basic nagios-plugins-extra nagios-snmp-plugins nagios-nrpe-plugin nagios3-core nagios-plugins-standard nagios3-cgi nagios-plugins-contrib
                                apt-get -y  install libssl-dev openssh-server openssh-client ntpdate snmp smbclient libldap-2.4-2 libldap2-dev  unzip
                                sed -i 's/check_external_commands=0/check_external_commands=1/g' /etc/nagios3/nagios.cfg

                                /usr/sbin/usermod -a -G www-data nagios
                                chmod -R g+wx /var/lib/nagios3/

                                /etc/init.d/nagios3 restart

                                /etc/init.d/apache2 restart
                                sleep 2
                                IP=`/sbin/ifconfig eth0 | grep 'inet addr:' | cut -d: -f2 | awk '{ print $1}'`
                                echo -e "\n\tNow Nagios is ready to be used via: http://$IP/nagios3"


### ADD HERE - git clone and pump the hosts files into place
cp Calavera2/nervios/*.cfg /etc/nagios3/conf.d/

exit 0

