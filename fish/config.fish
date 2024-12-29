source /usr/share/cachyos-fish-config/cachyos-config.fish

# overwrite greeting
# potentially disabling fastfetch
function fish_greeting
    #date
end

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin $PATH /home/ramin/.ghcup/bin # ghcup-env

set -Ux QT_QPA_PLATFORMTHEME qt6ct
set -Ux TERMINAL ghostty
set -Ux TERMINALEMULATOR ghostty

set -Ux XDG_CURRENT_DESKTOP sway
#set PATH $PATH /home/ramin/miniconda3/bin
set CUDA_HOME /opt/cuda
set PATH $PATH $CUDA_HOME/bin
alias adgpu /home/ramin/Desktop/personal/cheminfo/adgpu
alias obv /home/ramin/Desktop/oblivion/oblivion-desktop
alias vina /home/ramin/Desktop/personal/cheminfo/vina_1.2.5_linux_x86_64
alias authkon /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1
alias autogrid /home/ramin/AutoGrid/build/autogrid4
alias autodock /home/ramin/AutoDock4/build/autodock4
alias make50 'make CC=clang CFLAGS="-fsanitize=signed-integer-overflow -fsanitize=undefined -ggdb3 -O0 -std=c11 -Wall -Werror -Wextra -Wno-sign-compare -Wno-unused-parameter -Wno-unused-variable -Wshadow" LDLIBS="-lcrypt -lcs50 -lm"'

#alias hovercraft="~/hovervenv/bin/python ~/hovervenv/bin/hovercraft"
alias tlmgr='$TEXMFDIST/scripts/texlive/tlmgr.pl --usermode'
#set GPU_INCLUDE_PATH $CUDA_HOME/include
#set GPU_LIBRARY_PATH $CUDA_HOME/lib64
set TEXMFDIST /usr/share/texmf-dist/
set PATH $PATH ~/Desktop/personal/cheminfo/pymol/bin
set PATH $PATH /home/ramin/ADFRsuite-1.0/bin
set PATH $PATH /home/ramin/.juliaup/bin
set CPU_INCLUDE_PATH /opt/cuda/include/
set CPU_LIBRARY_PATH /opt/cuda/lib64/
## >>> conda initialize >>>
## !! Contents within this block are managed by 'conda init' !!
if test -f /home/ramin/miniconda3/bin/conda
    eval /home/ramin/miniconda3/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/home/ramin/miniconda3/etc/fish/conf.d/conda.fish"
        . "/home/ramin/miniconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/home/ramin/miniconda3/bin" $PATH
    end
end
## <<< conda initialize <<<
set PATH $PATH ~/Downloads/Telegram/
source /usr/local/gromacs/bin/GMXRC.fish

