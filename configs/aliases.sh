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

function public (){
  open_dir=0
  open_editor=0
  directory=""

  while test $# -gt 0
  do
    case "$1" in
      --open) open_dir=1
          ;;
      --dev) open_editor=1
          ;;
      --*) echo "bad option $1"
          ;;
      *) directory="/$1"
          ;;
    esac
    shift
  done

  cd "${HOME}/Public$directory";

  if [ "$open_dir" = 1 ]
    then open .;
  fi
  if [ "$open_editor" = 1 ]
    then editor .;
  fi

}

function docker-rails (){
  docker-exec rails s -b 0.0.0.0
}

function docker-bundle (){
  docker-exec bundle
}

function docker-rake (){
  docker-exec rake
}

function docker-server (){
  server_start=1
  server_stop=1
  server_enter=1
  open_dir=0
  open_editor=0
  server_middleman=0
  directory=""

  while test $# -gt 0
  do
    case "$1" in
      --run)
            server_start=1
            server_stop=1
            server_enter=1
          ;;
      --start)
            server_start=1
            server_stop=0
            server_enter=0
          ;;
      --stop)
            server_start=0
            server_enter=0
            server_stop=1
          ;;
      --open)
            server_start=0
            server_stop=0
            server_enter=0
            open_dir=1
          ;;
      --dev)
            open_dir=1
            open_editor=1
          ;;
      --enter)
            server_start=0
            server_stop=0
            server_enter=1
          ;;
      --middleman)
            server_middleman=1
          ;;
      --*) echo "bad option $1"
          ;;
      *) directory="/$1"
          ;;
    esac
    shift
  done

  if [ "$directory" = "" ]
    then
    cd ${PWD}
  else
    cd "${HOME}/Public$directory";
  fi

  if [ "$open_dir" = 1 ]
    then open .;
  fi

  if [ "$open_editor" = 1 ]
    then editor .;
  fi

  if [ "$server_start" = 1 ]
    then dcd;
  fi

  if [ "$server_enter" = 1 ]
    then
    if [ "$server_middleman" = 1 ]
    then
      dc exec web middleman server
    else
      dc exec web bundle exec rails s -b 0.0.0.0
    fi
  fi

  if [ "$server_stop" = 1 ]
    then dcs;
  fi

}

function server (){
  server_start=0
  server_stop=0
  server_enter=0
  server_open=0
  server_path='/rails'

  while test $# -gt 0
  do
    case "$1" in
      --run)
            server_start=1
            server_stop=1
            server_enter=1
          ;;
      --start)
            server_start=1
          ;;
      --stop)
            server_stop=1
          ;;
      --open)
            server_open=1
          ;;
      --enter)
            server_enter=1
          ;;
      --*) echo "bad option $1"
          ;;
      *) server_path="/$1"
          ;;
    esac
    shift
  done

  cd "${HOME}/Server$server_path";

  if [ "$server_open" = 1 ]
    then open .;
  fi
  if [ "$server_start" = 1 ]
    then vgu;
  fi
  if [ "$server_enter" = 1 ]
    then vg ssh;
  fi
  if [ "$server_stop" = 1 ]
    then vgh;
  fi

}
