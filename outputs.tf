# Copyright (c) 2022, Oracle and/or its affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.



#########################
## COA DEMO Details
#########################

#output "Databases_topic" {
#  value = data.oci_ons_notification_topics.test_notification_topics.notification_topics[0].topic_id
#}

output "COA_Demo_Details" {
  value = {
    automation_run_by  = data.oci_identity_user.coa_demo_executer.name
    bucketname         = data.oci_objectstorage_objects.test_objects.bucket
    region             = var.region
    adb                = module.adb[*].adb_database.adb_database_id
    cpu                = module.adb[*].adb_database.cpu_db
    dg                 = module.adb[*].adb_database.dg_db
    local_dg           = module.adb[*].adb_database.local_dg_db
    
  }
}

   

