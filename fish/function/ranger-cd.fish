# ranger-cd
function ranger-cd
    # 一時ファイルを作成
    set temp_file (mktemp -t tmp.XXXXXX)

    # rangerを実行
    /usr/bin/ranger --choosedir="$temp_file" $argv; or pwd

    # 一時ファイルが存在し、かつ現在のディレクトリが一時ファイルに書かれているディレクトリと異なる場合
    if test -f "$temp_file"
        set selected_dir (cat $temp_file)
        if test "$selected_dir" != (pwd)
            cd $selected_dir
        end
    end

    # 一時ファイルを削除
    rm -f $temp_file
end
