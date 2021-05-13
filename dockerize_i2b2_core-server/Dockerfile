FROM jboss/wildfly

ADD i2b2.war /opt/jboss/wildfly/standalone/deployments/
ADD postgresql-42.2.8.jar /opt/jboss/wildfly/standalone/deployments/
ADD crc-ds.xml /opt/jboss/wildfly/standalone/deployments/
ADD ont-ds.xml /opt/jboss/wildfly/standalone/deployments/
ADD pm-ds.xml /opt/jboss/wildfly/standalone/deployments/
ADD work-ds.xml /opt/jboss/wildfly/standalone/deployments/

CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0"]
