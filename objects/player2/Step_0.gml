
livellodiinput = (mov_destra - mov_sinistra != 0); (mov_indietro - mov_avanti != 0);
direzione_input = point_direction(0, 0, mov_destra - mov_sinistra, mov_indietro - mov_avanti );
 mov_destra = keyboard_check(ord("D"));
 mov_sinistra = keyboard_check(ord("A"));
 mov_avanti = keyboard_check(ord("W"));
 mov_indietro = keyboard_check(ord("S"));
//movimento player

x_spd = lengthdir_x(livellodiinput * move_spd, direzione_input);
y_spd = lengthdir_y(livellodiinput * move_spd, direzione_input);

x = +- x_spd;
y = +- y_spd;

//sprite index update

var _oldsprite = sprite_index;

if ( livellodiinput != 0 )
{
    direction = direzione_input
    sprite_index = sprite_camminata;
}

else sprite_index = sprite_idle;
    
if (_oldsprite != sprite_index) local_frame = 0;