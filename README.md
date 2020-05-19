# docker-tf

**Info**
------
A simple Docker configuration for running Terraform on any machine from within an AmazonLinux powered Docker container.

**Assumptions**
------
The following environment variables are accessible or directly passed to the `docker-compose` command execution:
```bash
AWS_ACCESS_KEY_ID
AWS_SECRET_ACCESS_KEY
AWS_SESSION_TOKEN
AWS_MFA_EXPIRY
```

**Usage**
------
```bash
$ docker build -t tf-executor-amzlnx2 .

$ TF_WORKING_DIR=~/my-terraform-code docker-compose -f docker-compose.yaml run tf-bash
```

**Output**
------
```bash
========================================
AWS ACCOUNT ALIAS: my-private-account
LOGGED IN AS: admin@my.domain
MFA EXPIRES AT: 2018-09-20T01:26:43Z
========================================
CWD: /opt/tf-code
CWD CONTENT:
-rw-r--r--  1 root root  906 Apr  5 09:24 main.tf
drw-r--r-- 12 root root  384 Apr 18 12:46 modules
bash-4.2#
```
