/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 04FC94CE
/// @DnDArgument : "var" "room_get_name(room)"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" ""title""
if(!(room_get_name(room) == "title"))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5A8A9924
	/// @DnDParent : 04FC94CE
	/// @DnDArgument : "expr" "swap_bool(global.paused)"
	/// @DnDArgument : "var" "global.paused"
	global.paused = swap_bool(global.paused);
}