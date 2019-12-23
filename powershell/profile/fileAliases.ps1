function Get-FolderSize {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipeline = $true)]
        $Path = ".",
        [ValidateSet("KB", "MB", "GB")]
        $Units = "MB"
    )
    if ( (Test-Path $Path) -and (Get-Item $Path).PSIsContainer ) {
        $Measure = Get-ChildItem $Path -Recurse -Force -ErrorAction SilentlyContinue | Measure-Object -Property Length -Sum
        $Sum = $Measure.Sum / "1$Units"
        [PSCustomObject]@{
            "Path"         = $Path
            "Size($Units)" = $Sum
        }
    }
}