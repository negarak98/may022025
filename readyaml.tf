locals {  
# get list of YAML files in the CONFIGS folder 
  windows_app_files = fileset("${path.module}/winddowsyaml" , "[^_]*.yaml")


#read and decode each YAML file
  windows_app = { 
    for windowsapp in local.windows_app_files :
   windowsapp => yamldecode(file("${path.module}/winddowsyaml/${windowsapp}"))
#means read YAML text(file) and turns into data that terraform can use(yamldecode)
}


#extract app info from file #flatten is a function that turns a list of lists into one list.

  windows_app_list = flatten([ for app in local.windows_app : [ for windowsapp in try(app.listofwindowsapp,  []) : {
  name     = windowsapp.name
  os_type  = windowsapp.os_type
  sku_name = windowsapp.sku_name
}]
])


}



  
