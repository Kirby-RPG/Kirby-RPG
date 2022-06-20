keyLeft = keyboard_check(vk_left);
keyRight = keyboard_check(vk_right);
keyUp = keyboard_check(vk_up);
keyDown = keyboard_check(vk_down);

inputDirection = point_direction(0,0,keyRight-keyLeft,keyDown-keyUp);
inputMagnitude = (keyRight - keyLeft != 0) || (keyDown - keyUp != 0)

// Movement
hSpeed = lengthdir_x(inputMagnitude * speedWalk, inputDirection);
vSpeed = lengthdir_y(inputMagnitude * speedWalk, inputDirection);

// Update Sprite Index
var _oldSprite = sprite_index;
if (inputMagnitude != 0)
{
	direction = inputDirection
	sprite_index = spriteRun
} else sprite_index = spriteIdle
if (_oldSprite != sprite_index) localFrame = 0;

//Update Image Index
playeranimationsprite();

//Collision
if place_meeting(x + hSpeed, y, obj_col) == true
{
	hSpeed = 0;
}
	
if place_meeting(x, y + vSpeed, obj_col) == true
{
	vSpeed = 0;
}


x += hSpeed;
y += vSpeed;
