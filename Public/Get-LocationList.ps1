function Get-LocationList {

    $locations = Get-LocationsFromJSON

    $locationNames = $locations.name

    $longestNameLength = Get-LongestStringLength -Strings $locationNames

    Write-Host ""
    foreach ($location in $locations) {
        Write-Host "    $($location.name.PadRight($longestNameLength + 1)) > $($location.path)"
    }
    Write-Host ""
}