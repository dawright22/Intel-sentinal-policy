module "tfplan-functions" {
    source = "../common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfstate-functions" {
    source = "../common-functions/tfstate-functions/tfstate-functions.sentinel"
}

module "tfconfig-functions" {
    source = "../common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

module "azure-functions" {
    source = "./azure-functions/azure-functions.sentinel"
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
