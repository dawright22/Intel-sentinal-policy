module "tfplan-functions" {
    source = "https://raw.githubusercontent.com/hashicorp/terraform-guides/master/governance/third-generation/common-functions/tfplan-functions/tfplan-functions.sentinel"
    
}

module "tfstate-functions" {
    source = "https://raw.githubusercontent.com/hashicorp/terraform-guides/master/governance/third-generation/common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfconfig-functions" {
    source = "https://raw.githubusercontent.com/hashicorp/terraform-guides/master/governance/third-generation/common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "azure-functions" {
    source = "  https://github.com/hashicorp/terraform-guides/tree/master/governance/third-generation/azure/azure-functions/azure-functions.sentinel"
}

policy "restrict-vm-image-id" {
    source = "./restrict-vm-image-id.sentinel"
    enforcement_level = "advisory"
}

policy "restrict-vm-publisher" {
    source = "./restrict-vm-publisher.sentinel"
    enforcement_level = "advisory"
}

policy "restrict-vm-size" {
    source = "./restrict-vm-size.sentinel"
    enforcement_level = "advisory"
}
