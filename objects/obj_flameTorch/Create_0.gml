/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5596A8C8
/// @DnDArgument : "var" "global.gameOver"
/// @DnDArgument : "value" "true"
if(global.gameOver == true)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 356A5751
	/// @DnDInput : 2
	/// @DnDParent : 5596A8C8
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_1" "false"
	/// @DnDArgument : "var" "spawn_wait"
	/// @DnDArgument : "var_1" "global.gameOver"
	spawn_wait = 1;
	global.gameOver = false;
}