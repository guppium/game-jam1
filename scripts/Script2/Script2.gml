function update_dello_sprite(){
// updeate dello sprite
    local_frame = 0
    var _direzionecardiale = round( direction) / 90;
    var  _frametotali =sprite_get_number( sprite_index) / 4;
    image_index = local_frame + (_direzionecardiale * _frametotali)
    local_frame += sprite_get_speed(sprite_index) / FRAMERATE

}