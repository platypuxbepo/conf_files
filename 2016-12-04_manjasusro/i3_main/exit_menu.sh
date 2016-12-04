#!/bin/bash
while [ "$select" != "NO" -a "$select" != "What ?" ]; do
	    select=$(echo -e 'NO\nWhat ?' | dmenu -nb '#151515' -nf '#999999' -sb '#f00060' -sf '#000000' -fn '-*-*-medium-r-normal-*-*-*-*-*-*-100-*-*' -i -p "Say what again motherfucker ?")
		        [ -z "$select" ] && exit 0
		done
		[ "$select" = "NO" ] && exit 0
		i3-msg exit

