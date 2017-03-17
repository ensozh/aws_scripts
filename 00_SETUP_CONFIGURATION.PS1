<#
.SYNOPSIS
   CONFIGURA EL CLI DE AWS PARA LA EJECUCUON DE SCRIPTS MEDIANTE POWERSHELL
.PARAMETER <paramName>
  $LLAVE_DE_ACCESO.- ACCESS KEY PROVISTA POR AWS.
  $REGION.- Region en la cual se desea trabajar.
  $LLAVE_SECRETA.- SECRET KEY PROVISTA POR aws.
  $PERFIL.- PERFIL DE USUARIO CREADO PARA EL ACCESO.
#>
# EJECUCION DEL SCRIPT
$PERFIL=Read-Host "Ingrese el Perfil de Acceso a usuario para configurar de manera implicita "
$REGION=Read-Host "Ingrese la Region de acceso"
$LLAVE_DE_ACCESO=Read-Host "Ingrese el ACCESS KEY provisto"
$LLAVE_SECRETA=Read-Host "Ingrese la SECRET KEY provista"

#se debe configurar Powrshell para permitir la execution de scripts remotos con el siguiente comenado:
#Set-ExecutionPolicy RemoteSigned
Set-AWSCredentials -AccessKey $LLAVE_DE_ACCESO -SecretKey $LLAVE_SECRETA -StoreAs $PERFIL
Initialize-AWSDefaults -ProfileName $PERFIL -Region $REGION
Get-EC2Instance 
echo "CONFIGURACION TERMINADA"