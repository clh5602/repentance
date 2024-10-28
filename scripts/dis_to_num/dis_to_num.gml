/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 1C6E3F36
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDInput : 2
/// @DnDArgument : "funcName" "dis_to_num"
/// @DnDArgument : "arg" "num1"
/// @DnDArgument : "arg_1" "num2"
function dis_to_num(num1, num2) 
{
	/// @DnDAction : YoYo Games.Common.Return
	/// @DnDVersion : 1
	/// @DnDHash : 75E632E9
	/// @DnDParent : 1C6E3F36
	/// @DnDArgument : "value" "abs(num1-num2)"
	return abs(num1-num2);
}