#!/bin/bash

get_public_ip(){
  curl http://ifconfig.me;echo
}

get_local_ip(){
  ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'
}

get_random_str(){
  date | sha256sum | head -c $1;echo;
}

is_port_running(){
  netstat -pntl | grep $1
}

run_test_server() {
  python3 -m http.server $1
}

docker_stop_all(){
  docker stop $(docker ps -aq)
}

docker_kill_all(){
  docker kill $(docker ps -aq)
}

docker_rm_all(){
  docker rm $(docker ps -aq)
}