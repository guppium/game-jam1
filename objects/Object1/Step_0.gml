var HorizontalDirection = keyboard_check(ord("D")) - keyboard_check(ord("A"));

var VerticalDirection = keyboard_check(ord("S")) - keyboard_check(ord("W"));

move_and_collide( HorizontalDirection * MoveSpeed, VerticalDirection * MoveSpeed, tilemap, undefined, undefined, undefined, MoveSpeed, MoveSpeed);

if (HorizontalDirection != 0 or VerticalDirection != 0 )
{
    if ( VerticalDirection > 0 ) sprite_index = camminata_avanti;
    else if ( HorizontalDirection > 0 ) sprite_index = camminata_destra;
    else if ( VerticalDirection < 0 ) sprite_index = Camminata_indietro; 
    else if ( HorizontalDirection < 0 ) sprite_index = camminata_sinistra;          
}
else 
{
    if (sprite_index ==  camminata_destra) sprite_index = idle_destra;
    else if (sprite_index ==  camminata_sinistra) sprite_index = idle_sinistra;
    else if (sprite_index ==  Camminata_indietro) sprite_index = idle_indietro;
    else if (sprite_index ==  camminata_avanti) sprite_index = idle_avanti; 
}
