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
