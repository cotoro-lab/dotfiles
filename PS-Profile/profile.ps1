# --- Encoding -------------------------------------
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
[Console]::InputEncoding = [System.Text.Encoding]::GetEncoding("shift_jis")

# --- Function -------------------------------------
Function EditVimrc { vim ~/.vimrc }
Function EditProfile { vim "C:\Program Files\PowerShell\7\profile.ps1" }
Function Open-CurrentDirectory {
    Invoke-Item .
}
function Vifmcd
{
    $dst = & vifm --choose-dir - $args
    if ([string]::IsNullOrEmpty($dst)) {
        Write-Host 'Directory picking cancelled/failed'
        return 1
    }
    Set-Location -LiteralPath $dst
}

# --- Alias -------------------------------------"
Set-Alias -Name ran -Value Vifmcd
Set-Alias -Name vimrc -Value EditVimrc
Set-Alias -Name profile -Value EditProfile
Set-Alias -Name grep -Value Select-String
Set-Alias -Name open -Value Open-CurrentDirectory
