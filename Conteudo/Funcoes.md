# Funções no PowerShell

## Funções são blocos de código que podem ser executados quantas vezes forem necessárias, ou seja, podemos reutilizar o mesmo código quantas vezes quisermos.

## Para criar uma função no PowerShell usamos o comando `function` seguido do nome da função e entre chaves o código da função.

## Um exemplo basico de uma função:

```powershell
function Teste {
    Write-Host "Olá mundo"
}
```

## Para executar a função usamos o comando `Teste`:

```powershell
Teste
```

## O resultado será:

```powershell
Olá mundo
```

## Podemos passar parametros para a função, para isso usamos o comando `$args`:

```powershell
function Teste {
    Write-Host "Olá $args"
}
```

## Para executar a função usamos o comando `Teste` e passamos o parametro `mundo`:

```powershell
Teste mundo
```

## O resultado será:

```powershell
Olá mundo
```

## Podemos passar mais de um parametro para a função, para isso usamos o comando `$args`:

```powershell
function Teste {
    Write-Host "Olá $args[0] e $args[1]"
}
```

## Para executar a função usamos o comando `Teste` e passamos os parametros `mundo` e `tudo bem?`:

```powershell
Teste mundo tudo bem?
```

## O resultado será:

```powershell
Olá mundo e tudo bem?
```

### Um outro exemplo de uma função:

```powershell
function Teste {
    $i = 0
    while ($i -lt 5) {
        Write-Host "O valor de i é $i"
        $i++
    }
}
```

## Para executar a função usamos o comando `Teste`:

```powershell   
Teste
```

## O resultado será:

```powershell
O valor de i é 0
O valor de i é 1
O valor de i é 2
O valor de i é 3
O valor de i é 4
```

## Para saber mais sobre funções no PowerShell acesse o link: [Funções](https://docs.microsoft.com/pt-br/powershell/module/microsoft.powershell.core/about/about_functions?view=powershell-7.1)
