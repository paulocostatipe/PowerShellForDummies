# Select-String 
## Para que server o comando Select-String?
### O comando Select-String é usado para procurar por "texto,palavra,erro...." em arquivos ou strings.
### Podemos usar o comando Select-String para procurar por um texto em um arquivo, por exemplo:
```powershell
Select-String -Path C:\temp\teste.txt -Pattern "teste"
```

## Explicando o comando acima:
### O comando Select-String é composto por 3 partes:
* ### Select-String: é o comando que usamos para procurar por um texto em um arquivo.
* ### -Path: é o parametro que usamos para informar o caminho do arquivo que queremos procurar.
* ### -Pattern: é o parametro que usamos para informar o texto que queremos procurar no arquivo.

## Alguns exemplos de parametros?
### Podemos parametrizar o comando Select-String de várias formas, por exemplo:
```powershell
Select-String -Path C:\temp\teste.txt -Pattern "teste" -AllMatches
```
### O parametro -AllMatches é usado para procurar por todas as ocorrências do texto informado no arquivo.

```powershell
Select-String -Path C:\temp\teste.txt -Pattern "teste" -AllMatches -CaseSensitive
```
### O parametro -CaseSensitive é usado para procurar por todas as ocorrências do texto informado no arquivo, porém ele diferencia letras maiúsculas de minúsculas.

```powershell
Select-String -Path C:\temp\teste.txt -Pattern "teste" -AllMatches -CaseSensitive -Quiet
```
### O parametro -Quiet é usado para procurar por todas as ocorrências do texto informado no arquivo, porém ele diferencia letras maiúsculas de minúsculas e retorna um valor booleano.

## Também podemos abrevar o comando Select-String:
```powershell
sls -Path C:\temp\teste.txt -Pattern "teste" 
```

# O 'sls' é a abreviação do comando Select-String.





## Para mais informações sobre o comando Select-String acesse o link abaixo:
[Select-String](https://docs.microsoft.com/pt-br/powershell/module/microsoft.powershell.utility/select-string?view=powershell-7.1)