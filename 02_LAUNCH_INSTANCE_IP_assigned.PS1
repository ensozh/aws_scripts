<#
.SYNOPSIS
   CREA UNA MAQUINA VIRTUAL EN AWS
.PARAMETER <paramName>
  $AMIescogida.- Define el tipo de maquina virtual a crear (Linux, Windows o AWS Linux)
  $TIPO_de_Instancia.- Define el tama�o de recursos que tendra la maquina o sistema operativo escogido.
  Estos se enuentran ya previemente definidos por el servicio de AWS.
  %IP.- Direcci�n IP que deseamos asignar, esta debe estar libre.
#>
# EJECUCION DEL SCRIPT

#$AMIescogida=Read-host "Ingrese la identificaci�n del AMI a utilizar"
#$TIPO_de_Instancia=Read-host "Ingrese TIPO de Instancia a utilizar"
$ip=Read-Host "Ingrese Direccion IP que desea utilizar"

#New-EC2Instance -ImageID $AMIescogida -MinCount 1 -MaxCount 1 -InstanceType $TIPO_de_Instancia  -PrivateIPAddress $ip   

New-EC2Instance -ImageID ami-188d6e0e -MinCount 1 -MaxCount 1 -InstanceType t2.micro -PrivateIPAddress $ip   