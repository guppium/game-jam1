if (instance_exists(battle_switch)) exit;
    
var _switcher = instance_create_depth(0, 0, 0, battle_switch);

_switcher.player_data = self;
_switcher.enemy_data = other; 
_switcher.original_room = room

room_goto(battle)