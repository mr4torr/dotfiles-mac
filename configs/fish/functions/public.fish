function public --description "Create a directory and set CWD"
    set open_dir 0
    set open_editor 0
    set directory ""

    if test $status = 0
        echo $argv
        for option in $argv
            switch "$option"
              case "--open"
                set open_dir 1
              case "--dev"
                set open_editor 1
              case "*"
                set directory "/$option"
            end
        end
    end

    cd "$HOME/Public$directory"

    if test $open_dir = 1
      open .
    end

    if test $open_editor = 1
      atom .
    end
end
