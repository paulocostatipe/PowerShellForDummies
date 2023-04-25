# Arrays no PowerShell

## Uma descrição resumida de Arrays no PowerShell
### Um array é uma coleção de valores que podem ser acessados por um indice.
### Um exemplo basico de um array:
```powershell
$array = @("valor1", "valor2", "valor3")
```
### Para acessar um valor do array usamos o indice do valor:
```powershell
$array[0]
```
### O resultado será:
```powershell
valor1
```
### Como podemos ver o valor do indice 0 é o valor1

## Esse é um exemplo e uma descrição de Arrays no PowerShell.

### Um outro exemplo de arrays para realizar um ping em uma lista de computadores:
```powershell
$computadores = @("servidor1", "servidor2", "servidor3")
foreach ($computador in $computadores) {
    Test-Connection $computador
}
```
### Também podemos usar o comando `for` para realizar o mesmo procedimento:
```powershell
$computadores = @("servidor1", "servidor2", "servidor3")
for ($i = 0; $i -lt $computadores.Length; $i++) {
    Test-Connection $computadores[$i]
}
```
### Explicando o conteudo desse exemplo:
### A variavel `$computadores` é um array com 3 valores
### O comando `for` vai executar o bloco de código enquanto a variavel `$i` for menor que o tamanho do array `$computadores`
### O comando `Test-Connection` vai realizar um ping no computador que estiver no indice `$i` do array `$computadores`
### O -lt é um operador de comparação que significa "menor que" e o .Length é uma propriedade que retorna o tamanho do array

## Esse é um exemplo e uma descrição de Arrays no PowerShell.

### Também podemos usar o comando `while` para realizar o mesmo procedimento:
```powershell
$computadores = @("servidor1", "servidor2", "servidor3")
$i = 0
while ($i -lt $computadores.Length) {
    Test-Connection $computadores[$i]
    $i++
}
```

### Parecido com o for, o comando `while` vai executar o bloco de código enquanto a variavel `$i` for menor que o tamanho do array `$computadores`

