#!/bin/bash

multimon -a DTMF -q |  awk '/[0-9]/ {
  cmd="./command.sh "$2 
  system(cmd)
}
'
