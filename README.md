# ibmcloud-roks-cli-login
A quick, two file script to log in to OpenShift via CLI.

## Step 1
Fork/Git clone this repo to the root of your directory.
```shell
git clone https://github.com/aroute/ibmcloud-roks-cli-login.git
```
## Step 2
If this is your first time going through this, you most likely do not have an API key for your IBM Cloud account. First, log in to your account: `ibmcloud login`. Use `ibmcloud login --sso` if you are an IBMer. Second, generate your account level API key. Replace `<name>` with a name that your account owner recognizes. In my case, `apikey-aa`, for example. It should be noted that this is a one-time activity per account. Save your API key somewhere secure in the future. Do not create this for the same account again.
```shell
ibmcloud iam api-key-create <name>
```
## Step 3
Edit `loginenv.sh` script and fill in your respective information.
```console
## My IBM Cloud Account
export IBMCLOUD_APIKEY=<your API key, retrieved above>
export IBMCLOUD_ACCOUNT=<locate your account, or BSS ID, found under Manage - Account drop-down>
export IBMCLOUD_REGION=<cluster's region, for example, us-east>
export IBMCLOUD_OCP_CLUSTERID=<your ROKS cluster ID>
```
## Step 4
Log in to your ROKS cluster.
```shell
./login.sh
```
