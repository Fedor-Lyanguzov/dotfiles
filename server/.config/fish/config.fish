if status is-interactive
    # Commands to run in interactive sessions can go here
    alias ls "eza --icons"
    alias ll "eza -al --git --icons"
    alias la "eza -a --icons"
    alias cat bat
    alias grep rg
    alias e nvim
    alias edit nvim
    alias find fd
    zoxide init --cmd cd fish | source
    function cpr
        rsync --archive -hh --partial --info=stats1,progress2 --modify-window=1 "$argv"
    end
    function mvr
        rsync --archive -hh --partial --info=stats1,progress2 --modify-window=1 --remove-source-files "$argv"
    end
    alias ga "git add ."
    alias gs "git status"
    alias gc "git commit"
    alias gp "git push"
    alias gg "ga && gc && gp"
    function pdf
        zathura "$argv" --fork && exit
    end
    alias connect-phone "iwctl station wlan0 connect \"Fedor Pixel 7\""

end
# ASDF configuration code
if test -z $ASDF_DATA_DIR
    set _asdf_shims "$HOME/.asdf/shims"
else
    set _asdf_shims "$ASDF_DATA_DIR/shims"
end

# Do not use fish_add_path (added in Fish 3.2) because it
# potentially changes the order of items in PATH
if not contains $_asdf_shims $PATH
    set -gx --prepend PATH $_asdf_shims
end
set --erase _asdf_shims
