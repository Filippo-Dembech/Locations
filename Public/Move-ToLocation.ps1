function Move-ToLocation {

    param(
        [ArgumentCompleter( {
            param (
                $commandName,
                $parameterName,
                $wordToComplete,
                $commandAst,
                $fakeBoundParameters
            )

            return (Get-Content "$PSSCriptRoot\..\Utils\locations.json" | ConvertFrom-Json).name | Where-Object { $_ -like "$wordToComplete*" }

        } )]
        [String]$Destination
    )

    $locations = Get-LocationsFromJSON

    foreach ($location in $locations) {
        if ($location.name -eq $Destination) {
            Set-Location $location.path
        }
    }

}