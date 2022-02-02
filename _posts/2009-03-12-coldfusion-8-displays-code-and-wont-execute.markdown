---
layout: post
legacy: true
title: Coldfusion 8 displays code and won't execute
wordpress_id: 30
wordpress_url: http://www.timharvey.net/2009/03/12/coldfusion-8-displays-code-and-wont-execute/
categories: []

tags: []

redirect_from:
- /2009/03/12/coldfusion-8-displays-code-and-wont-execute/

---

So after our Plesk 8 server crashed, Coldfusion didn't come back up as expected. Our code wouldn't execute and simply dumped the raw code to the browser. Displaying the code wasn't what I had in mind.

After hours fighting with the crazy monster (and having to piece together instructions from countless online sources), I thought I'd pull it all together in one place. I hope you find this to be helpful!

For us, this applied to:

redirect_from:
- 2009/03/12/coldfusion-8-displays-code-and-wont-execute/

---

* Plesk 8.4 for Linux (CentOS)
* Coldfusion 8 Update 1

**Error messages (or potential Google search bait) included:**

* There was an error while running the connector wizard
* Connector installation was not successful
* This web server is already configured for Jrun
* ColdFusion 8 not started, will retry connector
* Configuring the web server connector (Launched on the first run of the ColdFusion 8 start script)”
* mod_jrun20.so
* wsconfig.log
* 0xb7e6d280
* *** glibc detected *** free(): invalid pointer: 0xb7e6d280 ***
* glibc detected
* Error occurred during initialization of VM
* Could not reserve enough space for object heap
* From wsconfig.log:02/18 21:53:44 error This web server is already configured for JRun.<br />jrunx.connectorinstaller.ConnectorInstallerException: This web server is already configured for JRun. at<br />jrunx.connectorinstaller.ApacheInstaller.installConnector(ApacheInstaller.java:186) at<br />jrunx.connectorinstaller.ConnectorInstaller.installConnector(ConnectorInstaller.java:338) at<br />jrunx.connectorinstaller.ConnectorInstaller.doIt(ConnectorInstaller.java:272) at<br />jrunx.connectorinstaller.ConnectorInstaller.main(ConnectorInstaller.java:762)

Steps to correct the problem:

redirect_from:
- 2009/03/12/coldfusion-8-displays-code-and-wont-execute/

---

*(The items after the # are console commands, I ran these all as "root".)*

Add Apache configuration and development compilation tools

    # yum install httpd-devel

Correct paths in /opt/coldfusion/bin/connectors/apache_connector.sh

    # cd /opt/coldfusion/bin/connectors
    # vi .apache_connector.sh../../runtime/bin/wsconfig \
          -server coldfusion \
          -ws apache \
          -dir /etc/httpd/conf \
          -bin /usr/sbin/httpd \
          -script /usr/sbin/apachectl \
          -coldfusion

Add -apxs to set connector to do full recompile

    # cd /opt/coldfusion/bin/connectors
    # vi .apache_connector.sh../../runtime/bin/wsconfig \
          -server coldfusion \
          -ws apache \
          -dir /etc/httpd/conf \
          -bin /usr/sbin/httpd \
          -script /usr/sbin/apachectl \
          -coldfusion-apxs

Kept getting "This web server is already configured for Jrun", so had todestroy old compiled apache connector (which must have referenced the old config)

    # mv /opt/coldfusion/runtime/lib/wsconfig \
          /opt/coldfusion/runtime/lib/wsconfig-old

Run the apache_connector again, should see "CentOS release 4.5 (final)" several times with "Server version: Apache/2.0.52" and then a bunch of/bin/sh compile commands roll past

    # cd /opt/coldfusion/bin/connectors
    # ./apache_connector.sh

Will end with "The Apache connector was installed to /etc/httpd/conf"

Move the connectors script file so that it's not trying to up (have to stopthe services to make this work) from the[Adobe KB](http://kb.adobe.com/selfservice/viewContent.do?externalId=tn_18859)

    # /etc/init.d/coldfusion_8 stop
    # cd /opt/coldfusion/bin
    # mv cf-connectors.sh cf-connectors-run.sh

**Ahh, problem solved.**

I hope this helped you out of a jam. I certainly appreciated all the people who took time to post the pieces and parts of the solution I had to pull together. Without their help, I don't know how I would have gotten things sorted.
