<#
.SYNOPSIS
  DETIENE UNA INSTANCIA
.PARAMETER <paramName>
    $ID_de_Instancia.- Identifica la instancia que deseamos iniciar
  #>
# EJECUCION DEL SCRIPT

$ID_de_Instancia=Read-host "Ingrese ID de Instancia a apagar"
aws ec2 terminate-instances --instance-ids $ID_de_Instancia