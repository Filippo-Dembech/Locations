function Add-Location {
    param(
        [Parameter(Mandatory)]
        $Name,
        [Parameter(ParameterSetName="Manual")]
        $Path,
        [Parameter(ParameterSetName="Automatic")]
        [Switch]$Current
    )

    $locations = Get-LocationsFromJSON

    if ($Current) {
        $locations += [PSCustomObject]@{
            name = $Name
            path = (Get-Location).Path
        }
    } else {
        $locations += [PSCustomObject]@{
            name = $Name
            path = $Path
        }
    }


    Set-Content -Value (ConvertTo-Json $locations) -Path "$PSScriptRoot\..\Utils\locations.json"

}