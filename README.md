# Learn Linux Kernel
[［試して理解］Linuxのしくみ　―実験と図解で学ぶOS、仮想マシン、コンテナの基礎知識【増補改訂版】](https://amzn.asia/d/4Kf8V8v)

## Use Terraform to create a Linux VM
<img src="https://user-images.githubusercontent.com/60843722/233912035-21246e44-ccd5-40a4-a003-6b641d262032.png" width="500" alt="architecture">

[クイック スタート: Terraform を使用して Linux VM を作成する \- Azure Virtual Machines \| Microsoft Learn](https://learn.microsoft.com/ja-jp/azure/virtual-machines/linux/quick-create-terraform)

```bash
cd terraform

terraform init -upgrade

terraform plan -out main.tfplan
terraform apply main.tfplan

terraform output -raw tls_private_key > id_rsa
terraform output public_ip_address

eval `ssh-agent`
ssh-add
ssh -i id_rsa -A azureuser@<public_ip_address>

terraform plan -destroy -out main.destroy.tfplan
terraform apply main.destroy.tfplan
```
