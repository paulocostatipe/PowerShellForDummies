# Loops no PowerShell

## Loops

### Loops são usados para executar um bloco de código repetidamente enquanto uma condição for verdadeira

### São eles:

### For (É usado para executar um bloco de código um número especifico de vezes)
### Um exemplo basico de um loop onde o bloco de código será executado 5 vezes:
```powershell
$i = 0
for ($i -lt 5; $i++) {
    Write-Host "O valor de i é $i"
}
```
### O resultado será:
```powershell
O valor de i é 0
O valor de i é 1
O valor de i é 2
O valor de i é 3
O valor de i é 4
```
### Como podemos ver o bloco de código foi executado 5 vezes, pois a variavel $i foi incrementada 5 vezes

### Foreach (É usado para executar um bloco de código para cada item em uma coleção de itens)

### Um exemplo basico de um loop onde o bloco de código será executado para cada item em uma coleção de itens:
```powershell
$nomes = "João", "Maria", "José"

foreach ($nome in $nomes) {
    Write-Host "O nome é $nome"
}
```

### O resultado será:
```powershell
O nome é João
O nome é Maria
O nome é José
```

### Como podemos ver o bloco de código foi executado 3 vezes, pois a variavel $nomes contem 3 itens

### While (É usado para executar um bloco de código enquanto uma condição for verdadeira)

### Um exemplo basico de um loop onde o bloco de código será executado enquanto a variavel $i for menor que 5:
```powershell
$i = 0
while ($i -lt 5) {
    Write-Host "O valor de i é $i"
    $i++
}
```
### O resultado será:
```powershell
O valor de i é 0
O valor de i é 1
O valor de i é 2
O valor de i é 3
O valor de i é 4
```

### Como podemos ver o bloco de código foi executado 5 vezes, pois a variavel $i foi incrementada 5 vezes

### Do Until (É usado para executar um bloco de código até que uma condição seja verdadeira)

### Um exemplo basico de um loop onde o bloco de código será executado até que a variavel $i seja igual a 5:
```powershell
$i = 0
do {
    Write-Host "O valor de i é $i"
    $i++
} until ($i -eq 5)
```

### O resultado será:
```powershell
O valor de i é 0
O valor de i é 1
O valor de i é 2
O valor de i é 3
O valor de i é 4
```

### Como podemos ver o bloco de código foi executado 5 vezes, pois a variavel $i foi incrementada 5 vezes

### Do While (É usado para executar um bloco de código enquanto uma condição for verdadeira)

### Um exemplo basico de um loop onde o bloco de código será executado enquanto a variavel $i for menor que 5:
```powershell
$i = 0
do {
    Write-Host "O valor de i é $i"
    $i++
} while ($i -lt 5)
```

### O resultado será:
```powershell
O valor de i é 0
O valor de i é 1
O valor de i é 2
O valor de i é 3
O valor de i é 4
```

### Como podemos ver o bloco de código foi executado 5 vezes, pois a variavel $i foi incrementada 5 vezes.


## Para mais informações sobre loops no PowerShell acesse o link abaixo: 
[Loops no PowerShell](https://docs.microsoft.com/pt-br/powershell/module/microsoft.powershell.core/about/about_loops?view=powershell-7.1)
