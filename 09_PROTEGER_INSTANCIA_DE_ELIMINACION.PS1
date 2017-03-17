<#
.SYNOPSIS
  REINICIA UNA INSTANCIA
.PARAMETER <paramName>
    $ID_de_Instancia.- Identifica la instancia que deseamos iniciar
  #>
# EJECUCION DEL SCRIPT
param(
   [VariableSet(“1”, “2”)] 
   $InstanceName
)

#if ($instanceName -eq “1”){  Start-instance $id1}

#else { Start-Instance $id2}

#$ID_de_Instancia=Read-host "Ingrese ID de Instancia a PROTEGER"

aws ec2 modify-instance-attribute --instance-id $ID_de_Instancia --disable-api-termination