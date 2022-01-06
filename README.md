# ibmcloud-roks-cli-login
A quick, two file script to log in to IBM Managed Hosted OpenShift via CLI, using API key.

## Step 1
Fork/Git clone this repo to the root of your directory.
```shell
git clone https://github.com/aroute/roks-login.git
```
## Step 2
If this is your first time going through this, you most likely do not have an API key for your IBM Cloud account. First, log in to your account: `ibmcloud login`. Use `ibmcloud login --sso` if you are an IBMer. Second, generate your account level API key. Replace `<name>` with a name that your account owner recognizes. In my case, `apikey-aa`, for example. It should be noted that this is a one-time activity per account. Save your API key somewhere secure in the future. Do not create this for the same account again.
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
export IBMCLOUD_REGION=<cluster's region, for example - us-east - see the list of other regions below>
export IBMCLOUD_OCP_CLUSTERID=<your ROKS cluster ID>
```
## Step 4
Log in to your ROKS cluster.
```shell
./login.sh
```

### Appendix A

<!-- https://cloud.ibm.com/docs/containers?topic=containers-regions-and-zones#zones-mz
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
-->
