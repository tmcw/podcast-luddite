#!/bin/bash

curl -s $1 |\
  xml sel --net -T -t -m "//*[local-name()='item']" -m 'enclosure' -v '@url' -b -o ' ' -v 'title' -n |\
  head -n 5
