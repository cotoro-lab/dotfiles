# pwd-wincopy(only windows)
function pwd-wincopy
    set current_dir (pwd)
    set path_hwin (wslpath -w "$current_dir")
    set file_path_win (string replace -ra "\n" "" -- $path_win)
    echo $file_path_win | xsel --clipboard --input
end
