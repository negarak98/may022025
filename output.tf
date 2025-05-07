output "print"{  
  value = local.servicename
  }
  output "secondprint" {
    value = local.forum
    }

  output "lengthsa"{
  value=local.lengthsa
  }

output "wintersportslist"{
  value=[for sport in local.winterlistofsports:sport]
}
output "total_output"{
  value=[for sport in local.total_output:sport]
}
output "characters"{
  value=[for sport in local.characters:sport]
}
  
