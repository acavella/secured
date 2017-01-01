#!/bin/bash

# Perform YUM Update
    yum -y -q update

# Perform Package Installations and Upgrades
    if rpm -qa | grep -q aide; then
         printf "INSTALLING RPM PACKAGE AIDE:\r"
    else
         yum -y -q install aide
         printf "INSTALLING RPM PACKAGE AIDE: [ DONE ]\n"
    fi
    
    if rpm -qa | grep -q screen; then
         printf "INSTALLING RPM PACKAGE SCREEN:\r"
    else
         yum -y -q install screen
         printf "INSTALLING RPM PACKAGE SCREEN: [ DONE ]\n"
    fi
    
    if rpm -qa | grep -q logrotate; then
         printf "INSTALLING RPM PACKAGE LOGROTATE:\r"
    else
         yum -y -q install logrotate
         printf "INSTALLING RPM PACKAGE LOGROTATE: [ DONE ]\n"
    fi
    
    if rpm -qa | grep -q libreswan; then
         printf "INSTALLING RPM PACKAGE LIBRESWAN:\r"
    else
         yum -y -q install libreswan
         printf "INSTALLING RPM PACKAGE LIBRESWAN: [ DONE ]\n"
    fi

# Remove Unncessary and Insecure RPMs
    if rpm -qa | grep -q sendmail; then
         yum -y -q erase sendmail
         printf "REMOVING RPM PACKAGE SENDMAIL: [ DONE ]\n"
    else
         printf "REMOVING RPM PACKAGE SENDMAIL: [ DONE ]\n"
    fi
    
    if rpm -qa | grep -q xinetd; then
         yum -y -q erase xinetd
         printf "REMOVING RPM PACKAGE XINETD: [ DONE ]\n"
    else
         printf "REMOVING RPM PACKAGE XINETD: [ DONE ]\n"
    fi
    
    if rpm -qa | grep -q telnet-server; then
         yum -y -q erase telnet-server
         printf "REMOVING RPM PACKAGE TELNET SERVER: [ DONE ]\n"
    else
         printf "REMOVING RPM PACKAGE TELNET SERVER: [ DONE ]\n"
    fi
    
    if rpm -qa | grep -q rsh-server; then
         yum -y -q erase rsh-server
         printf "REMOVING RPM PACKAGE RSH SERVER: [ DONE ]\n"
    else
         printf "REMOVING RPM PACKAGE RSH SERVER: [ DONE ]\n"
    fi
    
    if rpm -qa | grep -q ypserv; then
         yum -y -q erase ypserv
         printf "REMOVING RPM PACKAGE YPSERV: [ DONE ]\n"
    else
         printf "REMOVING RPM PACKAGE YPSERV: [ DONE ]\n"
    fi
    
    if rpm -qa | grep -q tftp-server; then
         yum -y -q erase tftp-server
         printf "REMOVING RPM PACKAGE TFTP SERVER: [ DONE ]\n"
    else
         printf "REMOVING RPM PACKAGE TFTP SERVER: [ DONE ]\n"
    fi
    
    if rpm -qa | grep -q openldap-servers; then
         yum -y -q erase openldap-servers
         printf "REMOVING RPM PACKAGE OPENLDAP: [ DONE ]\n"
    else
         printf "REMOVING RPM PACKAGE OPENLDAP: [ DONE ]\n"
    fi
