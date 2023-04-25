# Importando CSV, Txt no PowerShell

## Uma breve descrição de como importar CSV, Txt no PowerShell é:
### Podemos importar arquivos CSV, Txt no PowerShell usando o comando `Import-Csv` e `Get-Content`.

### Um exemplo basico de como importar um arquivo CSV no PowerShell:
```powershell
$csv = Import-Csv -Path "C:\temp\teste.csv"
```
### Um exemplo basico de como importar um arquivo Txt no PowerShell:
```powershell
$txt = Get-Content -Path "C:\temp\teste.txt"
```
# Um exemplo de conteudo de arquivo CSV:
```csv
Computador,IP
PC01,192.168.0.5
PC02,192.168.0.6
```

## Ao importar um CSV no PowerShell podemos acessar os valores usando o comando `$csv` e entre colchetes a chave do valor que queremos acessar:
```powershell
$csv[0]
```
## O resultado será:
```powershell
Computador IP
----------- --
PC01 192.168.0.5
```
## Como podemos ver o valor da chave `Computador` e `IP` foi acessado.

# Um exemplo caso de uso para o import de CSV no PowerShell:
## Podemos usar o import para usar os valores de um CSV para executar um comando em um loop: como por exemplo o comando `Test-Connection` para testar a conexão com os computadores listados no CSV:
```powershell
$csv = Import-Csv -Path "C:\temp\teste.csv"
foreach ($computador in $csv) {
    Test-Connection -ComputerName $computador.Computador -Count 1
}
```

## Um outro exemplo de caso de uso para o import de CSV no PowerShell, seria para instalar um programa em todos os computadores listados no CSV:
```powershell
$csv = Import-Csv -Path "C:\temp\teste.csv"
foreach ($computador in $csv) {
    Invoke-Command -ComputerName $computador.Computador -ScriptBlock {
        Start-Process -FilePath "C:\temp\programa.exe" -ArgumentList "/S"
    }
}
```

# Podemos usar o import para N finalididades, como instalação, alteração de atributos, Criação de pastas, arquivos, etc.


### Para saber mais sobre Import-Csv no PowerShell acesse o link: [Import-Csv no PowerShell](https://docs.microsoft.com/pt-br/powershell/module/microsoft.powershell.utility/import-csv?view=powershell-7.1)