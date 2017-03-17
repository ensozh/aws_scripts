<#
.SYNOPSIS
   CREA UNA MAQUINA VIRTUAL EN AWS
.PARAMETER <paramName>
  $AMIescogida.- Define el tipo de maquina virtual a crear (Linux, Windows o AWS Linux)
  $TIPO_de_Instancia.- Define el tamaño de recursos que tendra la maquina o sistema operativo escogido.
  Estos se enuentran ya previemente definidos por el servicio de AWS.
#>
# EJECUCION DEL SCRIPT

$AMIescogida=Read-host "Ingrese la identificación del AMI a utilizar"
$TIPO_de_Instancia=Read-host "Ingrese TIPO de Instancia a utilizar"

New-EC2Instance -ImageID $AMIescogida -MinCount 1 -MaxCount 1 -InstanceType $TIPO_de_Instancia   