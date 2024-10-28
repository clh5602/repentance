/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 598E9D3D
/// @DnDArgument : "expr" "id"
/// @DnDArgument : "var" "closestPlatform"
closestPlatform = id;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2D37C133
/// @DnDArgument : "var" "global.gameOver"
/// @DnDArgument : "value" "true"
if(global.gameOver == true)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0B300207
	/// @DnDInput : 2
	/// @DnDParent : 2D37C133
	/// @DnDArgument : "expr_1" "global.playerMaxHP"
	/// @DnDArgument : "var" "global.soulDrops"
	/// @DnDArgument : "var_1" "global.playerHP"
	global.soulDrops = 0;
	global.playerHP = global.playerMaxHP;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1E515134
	/// @DnDParent : 2D37C133
	instance_destroy();
}