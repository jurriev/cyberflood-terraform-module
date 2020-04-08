# cyberflood-terraform-module

## CyberFlood Virtual Terraform module example

 Includes complete AWS configuration of a single CyberFlood Virtual (CFV) instance configured for traffic between its two ports.

### Instructions:

Install and setup Terraform with your AWS account. Download project from this page.

Edit following two files in the main project directory:
    variables.tf  
    main.tf

configure following parameters in these files
> AWS region  
> AWS AMI with CFV  
> IP subnets, routes and addresses  

One time initialize of module in Terraform:
> terraform init

Check and validate configuration:
>terraform plan

Create resources on AWS:
> terraform apply

When done testing remove resources:
> terraform destroy

For help configuring virtual routers in CyberFlood see:
> Doc ID: TRN10911 on support.spirent.com
