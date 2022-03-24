# Homework 7: A Day in the Life of a Windows Sysadmin

Steps 1 through 3 see gpreport.html or below:

<img src="media\image1.png" style="width:6.5in;height:3.36597in" alt="Graphical user interface, text, application Description automatically generated" />

1.  No LLMNR:

<img src="media\image2.png" style="width:3.48333in;height:2.99321in" alt="Graphical user interface, text, application Description automatically generated" />

2.  Account Lock out:

<img src="media\image3.png" style="width:5.44131in;height:3.80833in" alt="Graphical user interface, text, application Description automatically generated" />

3.  Powershell Logging:

<img src="media\image4.png" style="width:5.53333in;height:3.225in" alt="Graphical user interface, text, application Description automatically generated" />

Step 4:

\[CmdletBinding()\]

param (

    \[Parameter(Mandatory = $true,

    ParameterSetName = 'File Directory',

    HelpMessage = 'The file directory to get file ACLs for',

    Position = 0)\]

    \[string\]$directory

)

$files = Get-ChildItem $directory -Recurse

foreach ($file in $files) {

    if($(get-item $file) -is \[System.IO.FileInfo\])

    {

        write-host "\`r\`nGetting ACLs for $file"

        $fACLS = Get-Acl $file

        $oPut = @"

FileSystemRights: $($fACLS.Access.FileSystemRights)

AccessControlType: $($fACLS.Access.AccessControlType)

Group/User: $($fACLS.Access.IdentityReference)

"@

        Write-Host $oPut

    }

}
