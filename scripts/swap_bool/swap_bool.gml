/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 2843B236
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "swap_bool"
/// @DnDArgument : "arg" "bool"
function swap_bool(bool) 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4F7E4541
	/// @DnDParent : 2843B236
	/// @DnDArgument : "var" "bool"
	/// @DnDArgument : "value" "false"
	if(bool == false)
	{
		/// @DnDAction : YoYo Games.Common.Return
		/// @DnDVersion : 1
		/// @DnDHash : 5473424C
		/// @DnDParent : 4F7E4541
		/// @DnDArgument : "value" "true"
		return true;
	}

	/// @DnDAction : YoYo Games.Common.Return
	/// @DnDVersion : 1
	/// @DnDHash : 51BD23E2
	/// @DnDParent : 2843B236
	/// @DnDArgument : "value" "false"
	return false;
}