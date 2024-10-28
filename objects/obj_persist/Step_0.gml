/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 3C4272A6
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "obj_player"
var l3C4272A6_0 = false;
l3C4272A6_0 = instance_exists(obj_player);
if(l3C4272A6_0)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 10EB9F06
	/// @DnDParent : 3C4272A6
	/// @DnDArgument : "x" "obj_player.x"
	/// @DnDArgument : "y" "obj_player.y"
	x = obj_player.x;
	y = obj_player.y;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 27AD5832
/// @DnDArgument : "var" "global.dustTimer"
/// @DnDArgument : "op" "2"
if(global.dustTimer > 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 52EDB92C
	/// @DnDParent : 27AD5832
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "global.dustTimer"
	global.dustTimer += -1;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 070C68D6
/// @DnDArgument : "var" "global.playerInvincible"
/// @DnDArgument : "op" "2"
if(global.playerInvincible > 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 23B43F84
	/// @DnDParent : 070C68D6
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "global.playerInvincible"
	global.playerInvincible += -1;
}