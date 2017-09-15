alias vg="vagrant"
alias vgu="vg up"
alias vgh="vg halt"
alias vgp="vg provision"
alias vgd="vg destroy"
alias vgs="vg status"
alias vgi="vg init"
alias vgsh="vg ssh"
alias vgup="vg up --provision"

alias gadd="git add -A"
alias gad="gadd"
alias gco="git commit"
alias gst="git status"
alias glg="git log"
alias gch="git checkout"
alias gac="git add -A && git commit"
alias gpl="git pull origin"
alias gps="git push origin"
alias gmg="git merge"
alias gmr="gmg"
alias gall="gac && gps"


alias dk="docker"
alias dki="dc images"
alias docker-exec="docker-compose exec web"

alias dc="docker-compose"
alias dcu="dc up"
alias dcd="dcu -d"
alias dcs="dc stop"

alias server-dc="dcd && dc exec web bundle exec rails s -b 0.0.0.0 && dcs"

alias subli="subl . --command toggle_full_screen"
alias editor="atom"

alias home="cd ${HOME}"
alias open_home="home && open ."

alias desktop="cd ${HOME}/Desktop"
alias desktop_open="desktop && open ."
