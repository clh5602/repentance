/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0DB20D49
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "spr_die"
if(!(sprite_index == spr_die))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 30EF32FC
	/// @DnDInput : 2
	/// @DnDParent : 0DB20D49
	/// @DnDArgument : "expr" "spr_die"
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "var_1" "image_index"
	sprite_index = spr_die;
	image_index = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 42368D51
	/// @DnDInput : 2
	/// @DnDApplyTo : {obj_attack}
	/// @DnDParent : 0DB20D49
	/// @DnDArgument : "expr" "spr_disappear"
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "var_1" "image_index"
	with(obj_attack) {
	sprite_index = spr_disappear;
	image_index = 0;
	
	}
}