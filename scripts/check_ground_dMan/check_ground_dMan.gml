/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 697C91C8
/// @DnDArgument : "funcName" "check_ground_dMan"
function check_ground_dMan() 
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 59A4922B
	/// @DnDParent : 697C91C8
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "global.grav"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_wall"
	/// @DnDSaveInfo : "object" "obj_wall"
	var l59A4922B_0 = instance_place(x + 0, y + global.grav, obj_wall);
	if ((l59A4922B_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 49CECF03
		/// @DnDParent : 59A4922B
		/// @DnDArgument : "var" "on_ground"
		/// @DnDArgument : "value" "false"
		if(on_ground == false)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6BD4A59E
			/// @DnDInput : 2
			/// @DnDParent : 49CECF03
			/// @DnDArgument : "var" "pogo_goal"
			/// @DnDArgument : "var_1" "pogo_count"
			pogo_goal = 0;
			pogo_count = 0;
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 49D8C975
		/// @DnDParent : 59A4922B
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "on_ground"
		on_ground = true;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 72AA7092
	/// @DnDParent : 697C91C8
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1D4540A1
		/// @DnDParent : 72AA7092
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "on_ground"
		on_ground = false;
	}
}