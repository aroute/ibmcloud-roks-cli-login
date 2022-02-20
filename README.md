# ibmcloud-roks-cli-login
A quick, two file script to log in to IBM Managed Hosted OpenShift via CLI, using API key. 

This solution assumes you already have `ibmcloud` CLI installed on your computer (MacOS or Linux). Follow [this guide](https://cloud.ibm.com/docs/cli?topic=cli-getting-started) if you need to install `ibmcloud` CLI.

## Step 1
Git clone this repo to the root of your directory.
```shell
git clone https://github.com/aroute/roks-login.git
```
## Step 2

### If you do not already have an API key
If you are doing this for the first time, you most likely do not have an API key for your IBM Cloud account. To begin, log in to your account using `ibmcloud login` command. If you are an IBMer, use the `ibmcloud login --sso` command. Second, create an API key for your account level (see below). Replace `<name>` with a name that you can recognize for your IBM Cloud account. For example, apikey-TZv2-aa. It should be noted that this is a one-time activity per account. So save your API key somewhere safe for the future. Do not create this for the same account again.
```shell
ibmcloud iam api-key-create <name>
```
## Step 3

### When you have an API key
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

1. You may get the following error if you run this on MacOS: `./login.sh: line 3: realpath: command not found`. Solution is to install `coreutils`. 
```
brew install coreutils
```
2. You may get an error logging in if the container-service plugin is not installed on your computer. Install it with this command.
```
ibmcloud plugin install container-service -r 'IBM Cloud'
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

