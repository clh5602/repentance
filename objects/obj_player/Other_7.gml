/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4BA56C32
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "value" "spr_playerShoot"
if(sprite_index == spr_playerShoot)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 67CEECBC
	/// @DnDParent : 4BA56C32
	/// @DnDArgument : "expr" "spr_idle"
	/// @DnDArgument : "var" "sprite_index"
	sprite_index = spr_idle;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 652908F5
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "value" "spr_playerDeath"
if(sprite_index == spr_playerDeath)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 213A9F79
	/// @DnDInput : 2
	/// @DnDParent : 652908F5
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "expr_1" "spr_blank"
	/// @DnDArgument : "var" "next_room"
	/// @DnDArgument : "var_1" "sprite_index"
	next_room = true;
	sprite_index = spr_blank;
}