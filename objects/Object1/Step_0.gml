var HorizontalDirection = keyboard_check(ord("D")) - keyboard_check(ord("A"));

var VerticalDirection = keyboard_check(ord("S")) - keyboard_check(ord("W"));

move_and_collide( HorizontalDirection * MoveSpeed, VerticalDirection * MoveSpeed, tilemap, undefined, undefined, undefined, MoveSpeed, MoveSpeed);

if (HorizontalDirection != 0 or VerticalDirection != 0 )
{
    if ( VerticalDirection > 0 ) sprite_index = spr_player_walk_down;
    else if ( HorizontalDirection > 0 ) sprite_index = spr_player_walk_right;
    else if ( VerticalDirection < 0 ) sprite_index = spr_player_walk_up; 
    else if ( HorizontalDirection < 0 ) sprite_index = spr_player_walk_left;          
}
else 
{
    if (sprite_index ==  spr_player_walk_right) sprite_index = spr_player_idle_right;
    else if (sprite_index ==  spr_player_walk_left) sprite_index = spr_player_idle_left;
    else if (sprite_index ==  spr_player_walk_up) sprite_index = spr_player_idle_up;
    else if (sprite_index ==  spr_player_walk_down) sprite_index = spr_player_idle_down; 
}
