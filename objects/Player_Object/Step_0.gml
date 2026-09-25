//movimento player

var MoveRight = keyboard_check(ord("D"));
var MoveLeft = keyboard_check(ord("A"));
var MoveUp = keyboard_check(ord("W"));
var MoveDown = keyboard_check(ord("S"));

InputMagnitude = (MoveRight - MoveLeft != 0) || (MoveDown - MoveUp != 0);
InputDirection = point_direction(0, 0, MoveRight - MoveLeft, MoveDown - MoveUp);

PlayerXSpeed = lengthdir_x(InputMagnitude * PlayerMoveSpeed, InputDirection);
PlayerYSpeed = lengthdir_y(InputMagnitude * PlayerMoveSpeed, InputDirection);


x += PlayerXSpeed;
y += PlayerYSpeed;

//sprite index update
var OldSprite = sprite_index;

if (InputMagnitude != 0)
{
    direction = InputDirection
    sprite_index = SpriteCamminata;
} else sprite_index = SpriteIdle;

// Un altro if
if (OldSprite != sprite_index) PlayerLocalFrame = 0;
    

AnimatePlayerSprite()