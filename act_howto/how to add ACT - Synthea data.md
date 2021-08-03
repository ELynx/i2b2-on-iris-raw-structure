# Preface

ACT / Synthea dataset is supported, but not included "by default" into docker image. To add this dataset, some extra steps outlined below are necessary.

For this guide, you need to have built and running instance of "default" stage. See README.md in root folder about how to do it.

# Used data

## i2b2 Data Release 1.7.12a

Can be downloaded at https://github.com/i2b2/i2b2-data/releases/tag/v1.7.12a.0001

Matches i2b2-core-server version at time of creation

## ACT Onthology data

ACT Network Onthology resources, starting from https://dbmi-pitt.github.io/ACT-Network

For speed, we added file `insert_metadata_ACT_CPT_PX_2018AA_adapted.sql` here directly, but file is coming originally from ACT project, named `ACT_CPT_PX_2018AA.dsv`

# Preparation

Extract data release file, and navigate to

.../i2b2-data-1.7.12a.0001/edu.harvard.i2b2.data/Release_1-7/NewInstall/Metadata/act/scripts/oracle

Extract metadata.zip

Copy all extracted .sql files into this folder (act_howto) from where default docker image was built and started

Navigate to

.../i2b2-data-1.7.12a.0001/edu.harvard.i2b2.data/Release_1-7/NewInstall/Metadata/act/scripts/

(one folder above)

Copy two .sql files into same folder

File `insert_metadata_ACT_CPT_PX_2018AA_adapted.sql` should be here

File !TODO our script! shoule be here

# Executing SQL scripts

Assuming git checkout folder is `i2b2-on-iris`, your docker project is named `i2b2-on-iris` as well

Then IRIS container is named `i2b2-on-iris_iris_1`

Open CLI on that container, using host system CLI (https://docs.docker.com/engine/reference/commandline/exec/) or Docker Dashboard

From here on, all commands are executed on that container

Navigate to scripts folder

`cd /irisrun/repo/act_howto`

Check that files are in place

`ls -l`

You should see all files that you copied in preparation step

Run ObjectScript file that will install all SQL fiels above as DDL Imports

`iris session IRIS < act_i2b2.script`

Wait for DDLs to execute.

Check `all_errors.log` for errors. There may be errors because some of tables or table entities are already created in default i2b2 instance.

Check `all_nosup.log` for unsupported operations. File should not exist or be empty.
