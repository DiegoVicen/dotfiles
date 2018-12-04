#!/bin/bash

if [ -z "$XDG_CONF_HOME" ]
then
    DEST=$HOME/.config
else
    DEST=$XDG_CONF_HOME
fi

ln -s $HOME/dotfiles/compton/config   $DEST/compton.conf
ln -s $HOME/dotfiles/dunst/dunstrc    $DEST/dunst/dunstrc
ln -s $HOME/dotfiles/i3/config        $DEST/i3/config
ln -s $HOME/dotfiles/polybar/config   $DEST/polybar/config
ln -s $HOME/dotfiles/X/.Xmodmap       $HOME/.Xmodmap
ln -s $HOME/dotfiles/X/.Xresources    $HOME/.Xresources

echo "Symbolic links in $DEST created"

sudo cp -r $HOME/dotfiles/systemd/* /etc/systemd/

echo "All services copied to the systemd folder. Remember to activate them!"

# TODO: Activate or deactivate with a switch?
# echo "Updating grub to XPS-15 (Antergos)..."
# cp grub/xps15-antergos
# grub-mkconfig -o /boot/grub/grub.cfg
