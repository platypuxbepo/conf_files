#! /bin/bash
## That's in case you need to update the pgp keys because you're a lazy ass and
## didn't do it regurlary as you should have.
## Series of commands verbatim from http://www.cupoflinux.com/SBB/index.php?topic=2959.0
## post by Synrgy87, grazie a lui.

# update mirrors
sudo pacman-mirrors -g

# force update lists
sudo pacman -Syy

# sync / reinstall gnupg
sudo pacman -S gnupg

# update pacmany keys (change "manjaro" for "archlinux" if that's your system)
sudo pacman-key --populate manjaro

# refresh pacman keys
sudo pacman-key --refresh-keys

# force list update and synchronize packages on system. If trying all this does not
# work, remove all keys as shown below and start over at the top of this list
# (ie copy/paste the following in a console, run it, and run this script again)

sudo pacman -Syyu

# the command I was talking about:
# sudo rm /etc/pacman.d/gnupg
