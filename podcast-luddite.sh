#!/bin/bash

FEEDS=$(cat $1 | \
  xml sel --net -T -t -m "//*[local-name()='outline'][@xmlUrl]" -v @xmlUrl -o ' ' -v @text -n | \
  fzf -m)

echo $FEEDS | awk '{print $1}' |\
  parallel ./read-rss.sh > .episodes.tmp

cat .episodes.tmp | fzf -m > .picks.tmp

cat .picks.tmp | awk '{print $1}' | sed 's/\\\?.*$//' | sed 's/#.*$//' |\
  xargs aria2c --force-sequential
