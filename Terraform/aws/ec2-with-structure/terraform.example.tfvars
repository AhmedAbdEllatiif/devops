instance_type = "t2.micro"
ami_type = "ami-0759f51a90924c166"
az_name = "us-east-1e"
env_prefix = "smoke"
my_ip = "************/32"
public_ssh_key = "<path-to>/.ssh/id_ed25519.pub"
private_ssh_key = "<path-to>/.ssh/id_ed25519"
cidr_blocks = [
    # vpc cidrBlock
    "10.0.0.0/16",

    # subnet cidrBlock
   "10.0.0.0/20",
]