/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 37A1B494
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "value" "spr_compress"
if(sprite_index == spr_compress)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3D4A49D4
	/// @DnDInput : 3
	/// @DnDParent : 37A1B494
	/// @DnDArgument : "expr" "spr_idle"
	/// @DnDArgument : "expr_1" "false"
	/// @DnDArgument : "expr_2" "-10"
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "var_1" "obj_player.lock"
	/// @DnDArgument : "var_2" "obj_player.vsp"
	sprite_index = spr_idle;
	obj_player.lock = false;
	obj_player.vsp = -10;
}