resource "aws_instance" "expense" {
    for_each = var.instance_names # each.key and each.value
    ami = data.aws_ami.ami_info.id
    vpc_security_group_ids = ["sg-018a7f01c6abc8b7d"] # repalce our security aws_security_group
    instance_type = each.value

    tags = merge (   # map starts eith {}
        var.common_tags,
        {
            Name = "${each.key}"
            Module = "${each.key}"
            Environment = var.environment
        }
    )

}    
