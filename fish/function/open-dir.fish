# open-dir(only windows)
function open-dir
    set current_dir (pwd)
    set file_path_win (wslpath -w "$current_dir/")
    explorer.exe $file_path_win
end
