/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 3D6FB540
/// @DnDArgument : "funcName" "check_jump"
function check_jump() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 05E1210C
	/// @DnDParent : 3D6FB540
	/// @DnDArgument : "var" "jump"
	/// @DnDArgument : "value" "true"
	if(jump == true)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 705E2E14
		/// @DnDParent : 05E1210C
		/// @DnDArgument : "var" "second_jump"
		/// @DnDArgument : "value" "true"
		if(second_jump == true)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6480E861
			/// @DnDParent : 705E2E14
			/// @DnDArgument : "expr" "-jump_spd/1.3"
			/// @DnDArgument : "var" "vsp"
			vsp = -jump_spd/1.3;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 1A9F0B7E
		/// @DnDParent : 05E1210C
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4E124F35
			/// @DnDParent : 1A9F0B7E
			/// @DnDArgument : "expr" "-jump_spd"
			/// @DnDArgument : "var" "vsp"
			vsp = -jump_spd;
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 46C68034
		/// @DnDParent : 05E1210C
		/// @DnDArgument : "var" "hug_wall_count"
		/// @DnDArgument : "op" "2"
		if(hug_wall_count > 0)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5F0C22C6
			/// @DnDParent : 46C68034
			/// @DnDArgument : "var" "on_ground"
			/// @DnDArgument : "value" "false"
			if(on_ground == false)
			{
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 0BF30A8C
				/// @DnDParent : 5F0C22C6
				/// @DnDArgument : "var" "wall_side"
				/// @DnDArgument : "not" "1"
				if(!(wall_side == 0))
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 43EC371E
					/// @DnDParent : 0BF30A8C
					/// @DnDArgument : "expr" "wall_side*-7"
					/// @DnDArgument : "var" "hsp"
					hsp = wall_side*-7;
				}
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 3CD85602
				/// @DnDParent : 5F0C22C6
				/// @DnDArgument : "expr" "-6"
				/// @DnDArgument : "var" "hug_wall_count"
				hug_wall_count = -6;
			}
		}
	}
}