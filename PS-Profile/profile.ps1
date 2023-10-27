# --- Function -------------------------------------
Function EditVimrc { vim ~/.vimrc }
Function EditProfile { vim "C:\Program Files\PowerShell\7\profile.ps1" }

# .vifmrc -> "command! Q :execute '!echo %d > ~/.vifm/lastdir' | quit"
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
