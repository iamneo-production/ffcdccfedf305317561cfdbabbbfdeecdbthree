terraform {
    required_providers{
        aws={
            source="hashicorp/aws"
            version="~>4.0"
        }
    }
}
provider "aws"{
    region="ap-southeast-1"
    access_key="AKIAQAR763YWE7XXIYNT"
    secret_key="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"
}
resource "aws_instance" "aws"{
    ami="ami-072f48a9ed4f1bbda"
    instance_type="t2.micro"
}
output "public_ip"{
    value = aws_instance.aws.public_ip
}