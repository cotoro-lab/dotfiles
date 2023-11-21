# open-pdf(only windows)
function open-pdf
    set current_dir (pwd)
    if test "$argv" != ""
        set file_path_win (wslpath -w "$current_dir/$argv")
        cmd.exe /c start msedge "" $file_path_win
    end
end
