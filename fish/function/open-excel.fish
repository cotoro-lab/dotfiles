# open-excel(only windows)
function open-excel
    set current_dir (pwd)
    if test "$argv" != ""
        set file_path_win (wslpath -w "$current_dir/$argv")
        cmd.exe /c start excel "" $file_path_win
    end
end
