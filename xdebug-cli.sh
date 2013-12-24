#!/bin/bash

php -d xdebug.remote_enable="1" -d xdebug.remote_port="9000" -d xdebug.remote_handler="dbgp" -d xdebug.remote_connect_back="1" -d xdebug.remote_autostart="1" -d xdebug.remote_host="`echo $SSH_CLIENT | cut -d "=" -f 2 | awk '{print $1}'`" $@