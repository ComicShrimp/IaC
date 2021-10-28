# IaC
Studies about IaC (Terraform, Ansible and Vagrant) 

## How to use

### Vagrant

1. Generate `ssh keys`
   Simply generate a new key using thi command: `ssh-keygen`

2. Copy the key to the root folder of the project
   The private key must be named `id_rsa` and the public key `id_rsa.pub`

3. The Vangrant file specify a network
   The network specified on vagrant file might not exists, so, depending on your system, you may have to create, remove or edit the network

4. All files from the root directory of this project are synced with the folder `/vagrant` in the hosts

### Terraform

1. Create an user in aws to get the credentials

2. Get the credentials and add to your `aws-cli` to be able to run all the commands

### References

- https://www.youtube.com/watch?v=PX6OmeIbjC4
- https://www.youtube.com/watch?v=GfOj2wgxyF4
- https://www.youtube.com/watch?v=bYvdJKTwx_I
- https://www.youtube.com/watch?v=8mRZJcCgoS0