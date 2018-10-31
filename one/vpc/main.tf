provider"aws" {
access_key = "AKIAJT53PXOMPU45QM2A"
secret_key = "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"
region = "ap-south-1"
}

resource "aws_instance" "web" {
ami = "ami-5b673c34"
instance_type = "${var.instance_type}"
}
