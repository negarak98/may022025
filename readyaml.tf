locals {  
# get list of YAML files in the CONFIGS folder 
  linux_app_files = fileset("${path.module}/configs" , "[^_]*.yaml")


#read and decode each YAML file
  linux_app_data = { 
    for f in local.linux_app_files :
   f => yamldecode(file("${path.module}/configs/${f}"))
#means read YAML text(file) and turns into data that terraform can use(yamldecode)
}


#extract app info from file #flatten is a function that turns a list of lists into one list.

  linux_app_list = flatten([ for app in local.windows_app : [ for linuxapp in try(app.listofwindowsapp,  []) : {
  name     = windowsapp.name
  os_type  = windowsapp.os_type
  sku_name = windowsapp.sku_name
}]
])


}



  
