# --- Encoding -------------------------------------
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
[Console]::InputEncoding = [System.Text.Encoding]::GetEncoding("shift_jis")

# --- Function -------------------------------------
Function EditVimrc { nvim ~/.vimrc }
Function EditProfile { nvim "C:\Program Files\PowerShell\7\profile.ps1" }
Function CdNeovim { Set-Location "C:\Users\****\AppData\Local\nvim" }
# カレントディレクトリをexplorerで開く
Function Open-CurrentDirectory {
    Invoke-Item .
}

# pdfをedgeで開く
Function Open-Pdf
{
    param (
        [string]$FilePath
    )

    $currentDir = Get-Location
    if (-not [string]::IsNullOrWhiteSpace($FilePath))
    {
        $fullPath = Join-Path -Path $currentDir -ChildPath $FilePath
        $fileFullPathWin = $fullPath -replace '/', '\'
        Start-Process "msedge" "`"$fileFullPathWin`""
    }
}

# ranger-cd的な
Function Vifmcd
{
    $openDir = Get-Location
    $dst = & vifm $openDir --choose-dir - $args
    if ([string]::IsNullOrEmpty($dst))
    {
        Write-Host 'Directory picking cancelled/failed'
        return 1
    }
    $dst = $dst -replace "`f", ''
    if (!(Test-Path $dst))
    {
        $message = "The path '$dst' does not exist."
        $logFile = "C:\Users\s.uto\.vifm\errorLog.txt"
        Add-Content -Path $logFile -Value $message
        Write-Host $message
        return 1
    }
    Set-Location -LiteralPath $dst
}

# --- Alias -------------------------------------"
Set-Alias -Name ran -Value Vifmcd
Set-Alias -Name vimrc -Value EditVimrc
Set-Alias -Name profile -Value EditProfile
Set-Alias -Name open -Value Open-CurrentDirectory
Set-Alias -Name pdf -Value Open-Pdf
Set-Alias -Name cdnvim -Value CdNeovim

Set-Alias -Name grep -Value Select-String
Set-Alias -Name clip -Value Set-Clipboard
Set-PSReadlineKeyHandler -Key ctrl+d -Function DeleteCharOrExit
