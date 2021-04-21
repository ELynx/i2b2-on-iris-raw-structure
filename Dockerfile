ARG IMAGE=intersystemsdc/irishealth-community:2020.4.0.547.0-zpm
FROM $IMAGE

USER root
## add git
RUN apt update && apt-get -y install git

WORKDIR /opt/irisbuild
RUN chown ${ISC_PACKAGE_MGRUSER}:${ISC_PACKAGE_IRISGROUP} /opt/irisbuild
USER ${ISC_PACKAGE_MGRUSER}

## unpack dataset
COPY dataset dataset
RUN tar -xf /opt/irisbuild/dataset/data.gof.tar.gz

COPY src src
COPY Installer.cls Installer.cls
COPY module.xml module.xml
COPY iris.script iris.script

## prepare IRIS and FHIR, cache long operation
RUN iris start IRIS \
    && iris session IRIS < iris.script \
    && iris stop IRIS quietly

COPY dataset.script dataset.script

## upload dataset
RUN iris start IRIS \
    && iris session IRIS < dataset.script \
    && iris stop IRIS quietly
