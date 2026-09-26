
if (CanPlayerMove) { 
    //movimento player
    var MoveRight = keyboard_check(ord("D"));
    var MoveLeft = keyboard_check(ord("A"));
    var MoveUp = keyboard_check(ord("W"));
    var MoveDown = keyboard_check(ord("S"));
    
    var XInput = MoveRight - MoveLeft
    var YInput = MoveDown - MoveUp
    InputMagnitude = (XInput != 0) || (YInput != 0);
    InputDirection = point_direction(0, 0, MoveRight - MoveLeft, MoveDown - MoveUp);
    //PlayerXSpeed = lengthdir_x(InputMagnitude * PlayerMoveSpeed, InputDirection);
    //PlayerYSpeed = lengthdir_y(InputMagnitude * PlayerMoveSpeed, InputDirection);
    
    move_and_collide(XInput * PlayerMoveSpeed, YInput * PlayerMoveSpeed, [muro_obj, acqua_obj])
    
    x += PlayerXSpeed
    y += PlayerYSpeed
    
    //sprite index update
    var OldSprite = sprite_index;
    if (InputMagnitude != 0)
    {
        direction = InputDirection
        sprite_index = SpriteCamminata;
    } else sprite_index = SpriteIdle;
    // Un altro if
    if (OldSprite != sprite_index) PlayerLocalFrame = 0; 
        
    AnimatePlayerWalk()
}

// Combat
if (keyboard_check_pressed(vk_space) and PlayerIsAttacking == false){
    CanPlayerMove = false
    PlayerIsAttacking = true
    Attack()
    sprite_index = PlayerAttackSprite
    AnimatePlayerAttack()
}

if (image_index > 5 and sprite_index == PlayerAttackSprite) {
    CanPlayerMove = true
    PlayerIsAttacking = false
    sprite_index = PlayerIdle
}