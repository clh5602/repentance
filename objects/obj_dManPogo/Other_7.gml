/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6AF3DE89
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "value" "spr_idle"
if(sprite_index == spr_idle)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5D1CC0DA
	/// @DnDParent : 6AF3DE89
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "pogo_count"
	pogo_count += 1;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2154B287
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "value" "spr_ready"
if(sprite_index == spr_ready)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 30DAA5F6
	/// @DnDInput : 2
	/// @DnDParent : 2154B287
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "expr_1" "spr_air"
	/// @DnDArgument : "var" "jump"
	/// @DnDArgument : "var_1" "sprite_index"
	jump = true;
	sprite_index = spr_air;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7CEEE35E
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "value" "spr_die"
if(sprite_index == spr_die)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 67853203
	/// @DnDParent : 7CEEE35E
	instance_destroy();
}