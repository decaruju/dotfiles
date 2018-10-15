YAD_WIDTH=400
YAD_HEIGHT=200


    : $(( pos_y = 32 ))
    : $(( pos_x = $(xdpyinfo | grep dimensions | sed -r 's/^[^0-9]*([0-9]+x[0-9]+).*$/\1/' | sed -r 's/x.*//')/2 - (YAD_WIDTH / 2) ))

yad --calendar --undecorated --fixed --close-on-unfocus --no-buttons \
    --width=$YAD_WIDTH --height=$YAD_HEIGHT --posx=$pos_x --posy=$pos_y \
    | xclip -i -selection c
