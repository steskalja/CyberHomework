[CmdletBinding()]
param (
    [Parameter(Mandatory = $true,
    ParameterSetName = 'File Directory',
    HelpMessage = 'The file directory to get file ACLs for',
    Position = 0)]
    [string]$directory
)


$files = Get-ChildItem $directory -Recurse

foreach ($file in $files) {
    if($(get-item $file.FullName) -is [System.IO.FileInfo])
    {
        write-host "`r`nGetting ACLs for $($file.FullName)"
        $fACLS = Get-Acl $file.FullName
        $oPut = @"
FileSystemRights: $($fACLS.Access.FileSystemRights)
AccessControlType: $($fACLS.Access.AccessControlType)
Group/User: $($fACLS.Access.IdentityReference)
"@
        Write-Host $oPut
    }
}