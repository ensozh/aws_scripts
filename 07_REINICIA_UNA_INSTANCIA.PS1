$ID_de_Instancia=Read-host "Ingrese ID de Instancia a REINICIAR"

Restart-EC2Instance -InstanceId $ID_de_Instancia