# Script para verificar o status de um serviço pelo nome que foi passado no read-host

$Servico = Read-Host "Digite o nome do servico que deseja verificar o status"

Write-Host "Você digitou o servico $Servico"


$Status = Get-Service | Where-Object {$_.Name -or $_.DisplayName -match $Servico}



if ($Status -eq $null) {
    
    Write-Host "O servico $Servico nao existe" -ForegroundColor Red
exit
}

if ( $Status.Status -eq "Running") {
    Write-Host "O servico $Servico esta em execucao" -ForegroundColor Green
} 
else {
    Write-Host "O servico $Servico não esta em execucao" -ForegroundColor Red
}
