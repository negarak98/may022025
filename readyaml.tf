locals {  
# get list of YAML files in the CONFIGS folder 
linux_app_files = fileset("${path.module}/configs" , "[^_]*.yaml")
}

#read and decode each YAML file
  linux_app_data = { 
    for f in local.linux_app_files :
    yamldecode(file("${path.module} /configs/${f}"))
}
