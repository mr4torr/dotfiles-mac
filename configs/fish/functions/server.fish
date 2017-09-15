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
