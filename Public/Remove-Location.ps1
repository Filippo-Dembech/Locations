function Remove-Location {

    param(
        [Parameter(Mandatory)]
        $Name
    )

    $result = @()

    $locations = Get-LocationsFromJSON

    foreach ($location in $locations) {
        if ($location.name -ne $Name) {
            $result += $location
        }
    }

    Set-Content -Value (ConvertTo-Json $result) -Path "$PSScriptRoot\..\Utils\locations.json"

}