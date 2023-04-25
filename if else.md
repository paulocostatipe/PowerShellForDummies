# IF e Else no PowerShell
## Podemos usar o comando `if` para executar um bloco de código caso uma condição seja verdadeira e o comando `else` para executar um bloco de código caso a condição seja falsa.

### Um exemplo basico de um if onde o bloco de código será executado caso a variavel $i seja igual a 5:

```powershell
$i = 5
if ($i -eq 5) {
    Write-Host "O valor de i é $i"
}
```

### O resultado será:

```powershell
O valor de i é 5
```

### Como podemos ver o bloco de código foi executado pois a variavel $i é igual a 5

### Um exemplo basico de um if onde o bloco de código será executado caso a variavel $i seja igual a 5 e caso não seja o bloco de código do else será executado:

```powershell
$i = read-host "Digite um valor"
if ($i -eq 5) {
    Write-Host "O valor de i é $i"
} else {
    Write-Host "O valor de i não é $i"
}
```

### O resultado será:

```powershell
Digite um valor: 5
O valor de i é 5
```

### Como podemos ver o bloco de código do if foi executado pois a variavel $i é igual a 5 e o bloco de código do else não foi executado pois a variavel $i é igual a 5

## Esse é um exemplo e uma descrição do if e else. 

## para saber mais sobre if e else no PowerShell acesse o link: [If e Else no PowerShell](https://docs.microsoft.com/pt-br/powershell/module/microsoft.powershell.core/about/about_if?view=powershell-7.1)
