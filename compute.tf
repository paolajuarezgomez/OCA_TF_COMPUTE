
resource "oci_core_instance" "deploy_instance" {

  #Required
  availability_domain = data.oci_identity_availability_domains.availability_domains.availability_domains[1 % length(data.oci_identity_availability_domains.availability_domains.availability_domains)].name
  compartment_id      = var.compartment_id
  shape               = var.shape_vm
  agent_config {
    are_all_plugins_disabled = "false"
    is_management_disabled   = "false"
    is_monitoring_disabled   = "false"
    plugins_config {
      desired_state = var.plug_in_vul
      name          = "Vulnerability Scanning"
    }
    plugins_config {
      desired_state = var.plug_in_java
      name          = "Oracle Java Management Service"
    }
    plugins_config {
      desired_state = var.plug_os_man
      name          = "OS Management Service Agent"
    }
    plugins_config {
      desired_state = var.plug_man_agent
      name          = "Management Agent"
    }
    plugins_config {
      desired_state = var.plug_cus_logs
      name          = "Custom Logs Monitoring"
    }
    plugins_config {
      desired_state = var.plug_in_command
      name          = "Compute Instance Run Command"
    }
    plugins_config {
      desired_state = var.plug_in_mon
      name          = "Compute Instance Monitoring"
    }
    plugins_config {
      desired_state = var.plug_in_vol
      name          = "Block Volume Management"
    }
    plugins_config {
      desired_state = var.plug_bastion
      name          = "Bastion"
    }
 
  
  }
  create_vnic_details {

    #Optional
    assign_public_ip = true
    defined_tags = {
      "CCA_Basic_Tag.email" = data.oci_identity_user.coa_demo_executer.name
    }
    display_name   = "${var.names_prefix}compute"
    freeform_tags  = var.freeform_tags
    hostname_label = "${var.names_prefix}compute"
    subnet_id      = var.subnet_id
  }
  metadata = {
    ssh_authorized_keys = chomp(file(var.ssh_public_key_path))
  }
  defined_tags = {
    "CCA_Basic_Tag.email" = data.oci_identity_user.coa_demo_executer.name
  }
  display_name = "${var.names_prefix}compute"
  source_details {
    #Required
    source_id   = data.oci_core_images.this.images.0.id
    source_type = "image"
  }
  preserve_boot_volume = false
}
