# o que são variaveis no powershell e como usar

## Variaveis são como caixas que armazenam dados

### para criar uma variavel basta usar o sinal de $ e o nome da variavel e depois o valor que ela vai armazenar como no exemplo abaixo

```powershell
$nome = "Paulo"
```
## O $nome é uma variavel que armazena o valor "Paulo"

## As variaveis podem ser usadas para armazenar qualquer tipo de dado como numeros, texto, datas, etc

```powershell
$idade = 20
```
## O $idade é uma variavel que armazena o valor 20
# Variaveis são case sensitive e não podem ter espaços.
### Também não podem começar com números ou caracteres especiais como !@#$%&*()_+{}|:"<>?[];',./

## Podemos também usar variaveis para armazenar o resultado de comandos

```powershell
$ip = (Get-NetIPAddress).IPAddress
```
## O $ip é uma variavel que armazena o resultado do comando Get-NetIPAddress

## Podemos usar variaveis para armazenar o resultado de comandos e depois usar esses resultados em outros comandos

```powershell
$ip = (Get-NetIPAddress).IPAddress
$ip
```
## Uma vez que a variavel $ip foi criada podemos usar ela para mostrar o resultado do comando Get-NetIPAddress


#Variaveis de ambiente

## Variaveis de ambiente são variaveis que são criadas automaticamente pelo sistema operacional e podem ser usadas em qualquer script ou aplicação

## Para ver todas as variaveis de ambiente basta usar o comando Get-ChildItem Env:

```powershell
Get-ChildItem Env:
```
## Para ver o valor de uma variavel de ambiente basta usar o comando $env:nome_da_variavel

```powershell
$env:USERNAME
```

[Documentação Oficial](https://docs.microsoft.com/pt-br/powershell/module/microsoft.powershell.core/about/about_variables?view=powershell-7.3)
