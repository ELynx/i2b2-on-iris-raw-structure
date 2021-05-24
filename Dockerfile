ARG IMAGE=intersystemsdc/irishealth-community:2020.3.0.200.0-zpm
FROM $IMAGE

USER root

WORKDIR /opt/irisbuild

## unpack dataset
COPY dataset dataset
RUN tar -xf /opt/irisbuild/dataset/data.gof.tar.gz --directory /opt/irisbuild/dataset

COPY src src
COPY Installer.cls Installer.cls
COPY module.xml module.xml
COPY iris.script iris.script

RUN chown -R ${ISC_PACKAGE_MGRUSER}:${ISC_PACKAGE_IRISGROUP} /opt/irisbuild
USER ${ISC_PACKAGE_MGRUSER}

## prepare IRIS and FHIR, cache long operation
RUN iris start IRIS \
    && iris session IRIS < iris.script \
    && iris stop IRIS quietly

COPY dataset.script dataset.script

## upload dataset
RUN iris start IRIS \
    && iris session IRIS < dataset.script \
    && iris stop IRIS quietly
