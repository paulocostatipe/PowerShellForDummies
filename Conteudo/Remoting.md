# Execução remota de script no PowerShell

## O que é o Remoting?

O Remoting é uma forma de executar scripts no PowerShell em computadores remotos.

## Como usar o Remoting?

Para usar o Remoting você precisa primeiro habilitar o remoting no computador remoto, para isso você pode usar o comando `Enable-PSRemoting` ou `Set-Item WSMan:\localhost\Client\TrustedHosts -Value <nome do computador remoto> -Force` no computador remoto.

Para executar um script no computador remoto você pode usar o comando `Invoke-Command` ou `Enter-PSSession`.

## Exemplo de uso do Invoke-Command

```powershell
Invoke-Command -ComputerName <nome do computador remoto> -ScriptBlock {<código a ser executado>}
```

## Exemplo de uso do Enter-PSSession

```powershell

$session = New-PSSession -ComputerName <nome do computador remoto>
Enter-PSSession $session
<código a ser executado>
Exit-PSSession

```


## Para mais informações sobre o remoting no PowerShell acesse o link abaixo: 



[Understanding Remoting]: # https://docs.microsoft.com/pt-br/powershell/scripting/learn/remoting/understanding-remoting?view=powershell-7.1
[Running remote commands]: # https://docs.microsoft.com/pt-br/powershell/scripting/learn/remoting/running-remote-commands?view=powershell-7.1

[Running Remote Scripts]: # https://docs.microsoft.com/pt-br/powershell/scripting/learn/remoting/running-remote-scripts?view=powershell-7.1
