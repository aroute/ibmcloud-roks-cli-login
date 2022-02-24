@ECHO OFF

CALL "%~dp0win_loginenv.cmd"

ibmcloud login --apikey %IBMCLOUD_APIKEY% -c %IBMCLOUD_ACCOUNT% -r %IBMCLOUD_REGION%
ibmcloud oc cluster config -c %IBMCLOUD_OCP_CLUSTERID%
oc login -u apikey -p %IBMCLOUD_APIKEY%
