// imput movimento

 mov_destra = keyboard_check(ord("D"));
 mov_sinistra = keyboard_check(ord("A"));
 mov_avanti = keyboard_check(ord("W"));
 mov_indietro = keyboard_check(ord("S"));

//movimento player
    //prendere direzioni
     var _mov_orizzontale = mov_destra - mov_sinistra;
     var _mov_verticale = mov_indietro - mov_avanti;
     move_dir = point_direction( 0, 0, _mov_orizzontale, _mov_verticale );

   //prendere le velocità
   var _spd = 0
   var _livellodiinput = point_distance( 0, 0, _mov_orizzontale, _mov_verticale );
    _livellodiinput = clamp( _livellodiinput, 0, 1 );
   _spd = move_spd * _livellodiinput; 
   
    x_spd = lengthdir_x( _spd, move_dir ); 
    y_spd = lengthdir_y( _spd, move_dir );

    //collisioni
    if place_meeting( x + x_spd, y, acqua_obj )
    {
        x_spd = 0
    }
    if place_meeting( x, y + y_spd, acqua_obj )
    {
        y_spd = 0
    }

    //muovere il player
    x += x_spd;
    y += y_spd;