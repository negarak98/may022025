locals {  
# get list of YAML files in the CONFIGS folder 
  linux_app_files = fileset("${path.module}/configs" , "[^_]*.yaml")
}

#read and decode each YAML file
  linux_app_data = { 
    for f in local.linux_app_files :
    yamldecode(file("${path.module} /configs/${f}"))
}

#extract app info from file
  linux_app_list = flatten([ for app in local.linux_app_data : [ for linuxapp in try(app/listoflinuxapp,  [] : {
  name     = linuxapp.name
  os_type  = linuxapp.os_type
  sku_name = linuxapp.sku_name
}
]
])
}
  
