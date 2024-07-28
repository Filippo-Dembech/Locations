function Get-LongestStringLength {

    param(
        [String[]]$Strings
    )

    $result = 0
    foreach ($String in $Strings) {
        if ($String.length -gt $result) {
            $result = $String.length
        }
    }

    return $result
}