function AnimatePlayerSprite(){
// updeate dello sprite
    
    var _direzionecardiale = round(direction) / 90;
    var TotalFrames = sprite_get_number(sprite_index) / 4;
    image_index = PlayerLocalFrame + (_direzionecardiale * TotalFrames)
    PlayerLocalFrame += sprite_get_speed(sprite_index) / Framerate
    
    if (PlayerLocalFrame >= TotalFrames) {
        AnimationEnd = true
        PlayerLocalFrame -= TotalFrames
    } else AnimationEnd = false;
}