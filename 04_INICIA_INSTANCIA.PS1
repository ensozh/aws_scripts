<#
.SYNOPSIS
  INICIAR UNA INSTANCIA
.PARAMETER <paramName>
    $ID_de_Instancia.- Identifica la instancia que deseamos iniciar
  #>
# EJECUCION DEL SCRIPT

$ID_de_Instancia=Read-host "Ingrese ID de Instancia a iniciar"
aws ec2 start-instances --instance-ids $ID_de_Instancia