[Console]::OutputEncoding = [Text.UTF8Encoding]::UTF8
$OutputEncoding = New-Object -typename System.Text.UTF8Encoding
. (Resolve-Path "$env:LOCALAPPDATA\GitHub\shell.ps1")
Set-PSReadlineKeyHandler -Key Tab -Function Complete
# Load posh-git module from current directory
Import-Module posh-git
# Get full name of user
$username = [Environment]::UserName
$hostname = $env:COMPUTERNAME

# Am I an admin?
$wid = [System.Security.Principal.WindowsIdentity]::GetCurrent()
$prp = new-object System.Security.Principal.WindowsPrincipal($wid)
$adm = [System.Security.Principal.WindowsBuiltInRole]::Administrator
$IsAdmin = $prp.IsInRole($adm)

# Function to write git repository status on prompt
function writegitprompt($status){
    if ($status) {
        write-host ' (' -nonewline
        write-host ($status.Branch) -nonewline
        write-host ' ' -nonewline
        if($status.HasWorking) {
            write-host "$([char]0x25CF)" -nonewline -ForegroundColor @{$true='Green';$false='DarkGray'}[$status.Working.Added -and $status.Working.Added.Count -ge 0]
            write-host "$([char]0x25CF)" -nonewline -ForegroundColor @{$true=(@{$true='Red';$false='Yellow'}[$status.Working.Unmerged -and $status.Working.Unmerged.Count -ge 0]);$false=(@{$true='Red';$false='DarkGray'}[$status.Working.Unmerged -and $status.Working.Unmerged.Count -ge 0])}[$status.Working.Modified -and $status.Working.Modified.Count -ge 0]
            write-host "$([char]0x25CF)" -nonewline -ForegroundColor @{$true='Red';$false='DarkGray'}[$status.Working.Deleted -and $status.Working.Deleted.Count -ge 0]
        } else {
            write-host "$([char]0x25CF)$([char]0x25CF)$([char]0x25CF)" -nonewline -ForegroundColor DarkGray
        }
        if($status.HasIndex) {
            write-host "|" -nonewline
            write-host "$([char]0x25CF)" -nonewline -ForegroundColor @{$true='Green';$false='DarkGray'}[$status.Index.Added -and $status.Index.Added.Count -ge 0]
            write-host "$([char]0x25CF)" -nonewline -ForegroundColor @{$true=(@{$true='Red';$false='Yellow'}[$status.Index.Unmerged -and $status.Index.Unmerged.Count -ge 0]);false=(@{$true='Red';$false='DarkGray'}[$status.Index.Unmerged -and $status.Index.Unmerged.Count -ge 0])}[$status.Index.Modified -and $status.Index.Modified.Count -ge 0]
            write-host "$([char]0x25CF)" -nonewline -ForegroundColor @{$true='Red';$false='DarkGray'}[$status.Index.Deleted -and $status.Index.Deleted.Count -ge 0]
        }
        write-host ')' -nonewline
    }
}

# Here we go
function global:prompt {
    $realLASTEXITCODE = $LASTEXITCODE
    if($IsAdmin){
        write-host "gjq.uoiai" -nonewline -ForegroundColor Red
    } else {
        write-host "gjq.uoiai" -nonewline -ForegroundColor Yellow
    }
    write-host " " -nonewline -ForegroundColor Gray
    Write-Host($pwd.ProviderPath) -nonewline -ForegroundColor Green

    writegitprompt (Get-GitStatus)

    # Rightmost time display
    # Save cursor position first
    $saveY = [console]::CursorTop
    $saveX = [console]::CursorLeft
    $columns = (Get-Host).UI.RawUI.windowsize.width    # Column quantity of console window
    # [console]::SetCursorPosition($columns - 8, $saveY)
    [console]::SetCursorPosition($saveX+1, $saveY)
    write-host "[" -nonewline
    write-host (Get-Date -format "HH:mm:ss") -nonewline -ForegroundColor Cyan
    # write-host "]" -nonewline
    # [console]::setcursorposition($saveX,$saveY)        # Move cursor back
    write-host "]" -nonewline
    [console]::setcursorposition(0,$saveY+1)
    $global:LASTEXITCODE = $realLASTEXITCODE
    return " $([char]0x3BB) "
    # return " $([char]0x2764) "
}
if (Test-Path ".\venv\Scripts\activate") {
    .\venv\Scripts\activate.ps1
}
elseif (Test-Path "C:\Users\gjquo\me\Scripts\activate") {
    C:\Users\gjquo\me\Scripts\activate.ps1
}
