function fish_prompt
  set_color yellow
   printf '%s' (whoami)
   set_color normal
   printf ' at '

   set_color magenta
   printf '%s' (hostname|cut -d . -f 1)
   set_color normal
   printf ' in '

   set_color $fish_color_cwd
   printf '%s' (prompt_pwd)
   set_color normal

   # Line 2
   echo
   if test $VIRTUAL_ENV
       printf "(%s) " (set_color blue)(basename $VIRTUAL_ENV)(set_color normal)
   end
   printf '↪ '
   set_color normal
end

alias vg "vagrant"
alias vgu "vg up"
alias vgh "vg halt"
alias vgp "vg provision"
alias vgd "vg destroy"
alias vgs "vg status"
alias vgi "vg init"
alias vgsh "vg ssh"
alias vgup "vg up --provision"

alias gadd "git add -A"
alias gad "gadd"
alias gco "git commit"
alias gst "git status"
alias glg "git log"
alias gch "git checkout"
function gac
 git add -A
 git commit
end
alias gpl "git pull origin"
alias gps "git push origin"
alias gmg "git merge"
alias gmr "gmg"

function gall
  gac; gps
end

alias subli "subl . --command toggle_full_screen"
alias editor "atom"

alias home "cd ~/"

function open_home
  homeopen .
end

alias desktop "cd ~/Desktop"

function desktop_open
  desktop; open .
end
