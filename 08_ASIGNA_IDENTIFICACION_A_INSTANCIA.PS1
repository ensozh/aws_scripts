<#
.SYNOPSIS
  ASIGNA IDENTIFICADORES A INSTANCIAS
.PARAMETER <paramName>
    $ID_de_Instancia.- Identifica la instancia que deseamos iniciar
  #>
# EJECUCION DEL SCRIPT

$ID_de_Instancia=Read-host "Ingrese ID de Instancia a apagar"
$KEY=Read-host "Ingrese TIPO IDENTIFICADOR Por Ej. Departamento"
$VALOR=Read-host "Ingrese IDENTIFICADOR Por Ej. Sistemas"

aws ec2 create-tags --resources $ID_de_Instancia --tags Key=$Key,Value=$valor
