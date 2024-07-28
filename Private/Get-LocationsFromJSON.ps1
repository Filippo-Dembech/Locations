function Get-LocationsFromJSON {
    return Get-Content "$PSSCriptRoot\..\Utils\locations.json" | ConvertFrom-Json
}