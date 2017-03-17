<#
.SYNOPSIS
  DESCRIBE LAS INSTANCIAS 
.PARAMETER <paramName>
    $ID_de_Instancia.- Identifica la instancia que deseamos iniciar
  #>
# EJECUCION DEL SCRIPT

$ID_de_Instancia=Read-host "Ingrese ID de Instancia a describir"
ec2-describe-instances instance-id $ID_de_Instancia