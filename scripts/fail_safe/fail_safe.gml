/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 631C27BB
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "fail_safe"
function fail_safe() 
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 72F788AF
	/// @DnDParent : 631C27BB
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_wall"
	/// @DnDSaveInfo : "object" "obj_wall"
	var l72F788AF_0 = instance_place(x + 0, y + 0, obj_wall);
	if ((l72F788AF_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1A88DC4C
		/// @DnDParent : 72F788AF
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "fail_wait"
		fail_wait += 1;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 08BE9905
	/// @DnDParent : 631C27BB
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4748C306
		/// @DnDParent : 08BE9905
		/// @DnDArgument : "var" "fail_wait"
		fail_wait = 0;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 26149FB9
	/// @DnDParent : 631C27BB
	/// @DnDArgument : "var" "fail_wait"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "10"
	if(fail_wait > 10)
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 245BEF5A
		/// @DnDParent : 26149FB9
		/// @DnDArgument : "x" "0"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "1"
		/// @DnDArgument : "y_relative" "1"
		x += 0;
		y += 1;
	}
}