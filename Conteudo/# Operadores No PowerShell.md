# Operadores No PowerShell

## Operadores
### Operadores são usadas para comparar valores e executar ações baseadas nesses valores dentro do nosso codigo ou script

## Operadores de comparação:
### São usados para comparar valores e retornar um valor booleano (True ou False)
### São eles:
### -eq (igual)
### -ne (diferente)
### -gt (maior que)
### -ge (maior ou igual que)

### Segue um exemplo:
```powershell
$idade = 20
$idade -eq 20
```
### O resultado será True pois a variavel $idade é igual a 20


## Operadores aritiméticos:
### São usados para executar operações matemáticas
### São eles:
### + (soma)
### - (subtração)
### * (multiplicação)
### / (divisão)
### % (resto da divisão)
### ++ (incremento)
### -- (decremento)

### Segue um exemplo:
```powershell
$idade = 20
$idade + 3
```
### O resultado será 23 pois a variavel $idade é igual a 20 e somamos 3 a ela usando o operador +

## Operadores lógicos:
### São usados para combinar valores booleanos e retornar um valor booleano
### São eles:
### -and (e)
### -or (ou)
### -not (não)

### Segue um exemplo:
```powershell
$idade = 20
$idade -gt 18 -and $idade -lt 30
```
### O resultado será True pois a variavel $idade é maior que 18 e menor que 30


## Para mais sobre operadores no PowerShell acesse o link abaixo:
[Operadores](https://docs.microsoft.com/pt-br/powershell/module/microsoft.powershell.core/about/about_operators?view=powershell-7.1)