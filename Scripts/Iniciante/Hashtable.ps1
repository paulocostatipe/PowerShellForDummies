#Exemplo de Hash Table com informações de servidores

$Servidores = @{
    "Servidor1" = @{
        "IP" = "192.168.0.5"
        "localizacao" = "Recife"
        }
    "Servidor2" = @{
        "IP" = "192.168.0.6"
        "Localizacao" = "São Paulo"
        }
        }

Foreach ($Servidores in $Servidores.GetEnumerator()) {
Write-Host "Servidor: $($Servidores.Key)"
Write-Host " IP: $($Servidores.Value['IP'])"
Write-Host "Localização: $($Servidores.Value['Localizacao'])"

}