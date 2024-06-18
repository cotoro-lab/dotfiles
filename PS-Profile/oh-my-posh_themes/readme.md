- `code $PROFILE`で「Microsoft.PowerShell_profile.ps1」を開くか作るかして下記設定を追記する。

```powershell
oh-my-posh init pwsh --config "{user-pass}\takuya.omp.json" | Invoke-Expression
Import-Module posh-git
```

- VSCodeで文字化けする場合は、setting.jsonに下記を追記する。
※Nerd Fontを適用したらよい
`"editor.fontFamily": "CaskaydiaMono Nerd Font",`
