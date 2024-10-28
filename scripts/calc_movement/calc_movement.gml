/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 2B932173
/// @DnDArgument : "funcName" "calc_movement"
function calc_movement() 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5C2F4A26
	/// @DnDParent : 2B932173
	/// @DnDArgument : "expr" "global.grav"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "vsp"
	vsp += global.grav;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 610B0BB4
	/// @DnDParent : 2B932173
	/// @DnDArgument : "var" "vsp"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "5"
	if(vsp > 5)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 03DD894D
		/// @DnDParent : 610B0BB4
		/// @DnDArgument : "expr" "5"
		/// @DnDArgument : "var" "vsp"
		vsp = 5;
	}
}