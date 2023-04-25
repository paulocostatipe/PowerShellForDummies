<#
.Description
    Importa um arquivo CSV com os dados dos usuários e cria os usuários no AD.
.Example
    .\CriarUserCsv.ps1
.Notas
    Você precisa importar o módulo ActiveDirectory para executar este script.    
    O arquivo CSV deve conter os campos: Nome, Sobrenome, Login, Senha, Email

#>

import-Module ActiveDirectory

$users= Import-Csv -Path "C:\temp\usuarios.csv" -Delimiter ","
# Os usuarios serão criado na OU Users na raiz do domínio

# Crianco os usuários

Foreach ($user in $users){

        New-ADUser  `
        -Name $user.Nome `
        -Surname $user.Sobrenome `
        -SamAccountName $user.Login `
        -UserPrincipalName $user.Login `

Write-Host "Usuário $user.Nome criado com sucesso" -ForegroundColor Green
Write-Host "Usuário está desabilitado" -ForegroundColor Yellow

}
