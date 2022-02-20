# ibmcloud-roks-cli-login
A quick, two file script to log in to IBM Managed Hosted OpenShift via CLI, using API key.

## Step 1
Git clone this repo to the root of your directory.
```shell
git clone https://github.com/aroute/roks-login.git
```
## Step 2

If you are doing this for the first time, you most likely do not have an API key for your IBM Cloud account. To begin, log in to your account at `ibmcloud login`. If you are an IBMer, use `ibmcloud login —sso`. Second, create an API key for your account level. Replace `<name>` with a name that you can recognize for your IBM Cloud account. For example, apikey-TZV2-aa. It should be noted that this is a one-time activity per account. Save your API key somewhere safe for the future. Do not create this for the same account again.
```shell
ibmcloud iam api-key-create <name>
```
## Step 3
```shell
cd roks-login
```
```shell
chmod +x *.sh
```
Edit `loginenv.sh` script and fill in your respective information.
```console
## My IBM Cloud Account
export IBMCLOUD_APIKEY=<your API key, retrieved above>
export IBMCLOUD_ACCOUNT=<locate your account, or BSS ID, found under Manage - Account drop-down>
export IBMCLOUD_REGION=<cluster's region, for example - us-east - see the list of other regions below in appendix>
export IBMCLOUD_OCP_CLUSTERID=<your ROKS cluster ID>
```
## Step 4
Log in to your ROKS cluster.
```shell
./login.sh
```

## Troubleshooting

You may get the following error if you run this on MacOS: `./login.sh: line 3: realpath: command not found`. Solution is to install `coreutils`. 
```
brew install coreutils
```

### Appendix A

https://cloud.ibm.com/docs/containers?topic=containers-regions-and-zones#zones-mz
1. au-syd
2. in-che
3. jp-osa
4. jp-tok
5. kr-seo
6. eu-de
7. eu-gb
8. ca-tor
9. us-south
10. us-south-test
11. us-east
12. br-sao

