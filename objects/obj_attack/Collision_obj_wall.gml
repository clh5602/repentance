/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2693F0A3
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "spr_disappear"
if(!(sprite_index == spr_disappear))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 43865DBB
	/// @DnDInput : 2
	/// @DnDParent : 2693F0A3
	/// @DnDArgument : "expr" "spr_disappear"
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "var_1" "image_index"
	sprite_index = spr_disappear;
	image_index = 0;
}