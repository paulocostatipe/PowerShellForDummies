$usuarios = Read-Host "Digite o nome dos usuarios separado por virgual, exemplo: Paulo Costa, Paulo Arthur"
$usuariosArray = $usuarios -split ","

$Criar = $usuariosArray | ForEach-Object {

    $Pnome = ($_ -split " ")[0]
    $Snome = ($_ -split " ")[1]

    $Usuario = $Pnome + "." + $Snome

    @{
        Nome = $_
        Login = $Usuario
    }
}

foreach ($usuario in $Criar) {
    Write-Host "Nome: $($usuario.nome) - Login: $($usuario.Login)"
    $Propiedades = @{
        Name = $usuario.Login
        DisplayName = $usuario.Nome
        SamAccountName = $usuario.Login

   }

    New-ADuser @Propiedades

        
}
