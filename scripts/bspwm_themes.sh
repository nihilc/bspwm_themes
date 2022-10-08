#! /bin/sh

function ChangeTheme(){
  export COLOR_THEME=$1
  # Select Color Theme
  source $DOTFILES/themes/$COLOR_THEME
  # Create dotfiles white new colors
  envsubst < $DOTFILES/alacritty/alacritty.yml > ~/.config/alacritty/alacritty.yml
  envsubst < $DOTFILES/bspwm/bspwmrc > ~/.config/bspwm/bspwmrc
  envsubst < $DOTFILES/dunst/dunstrc > ~/.config/dunst/dunstrc
  envsubst < $DOTFILES/polybar/colors.ini > ~/.config/polybar/colors.ini
  envsubst < $DOTFILES/rofi/colors.rasi > ~/.config/rofi/colors.rasi

  chmod +x $HOME/.config/bspwm/bspwmrc; bspc wm -r &
  pkill polybar; sleep 1s; polybar &
  pkill dunst; sleep 1s; dunst &
  notify-send "Change Theme" "$COLOR_THEME" -u low
  notify-send "Change Theme" "$COLOR_THEME" -u normal
  notify-send "Change Theme" "$COLOR_THEME" -u critical
}

for i in $(ls -C1 $DOTFILES/themes/)
do
  options+="$i\n"
done

chosen=$(printf $options | rofi -dmenu -i -p "")

if [[ ${chosen} == "" ]]; then
  exit 1
else
  ChangeTheme $chosen
fi
