/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 4B8191B5
/// @DnDArgument : "funcName" "check_ground"
function check_ground() 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3935463C
	/// @DnDParent : 4B8191B5
	/// @DnDArgument : "var" "platform_speed"
	platform_speed = 0;

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 59A4922B
	/// @DnDParent : 4B8191B5
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "3"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_wall"
	/// @DnDSaveInfo : "object" "obj_wall"
	var l59A4922B_0 = instance_place(x + 0, y + 3, obj_wall);
	if ((l59A4922B_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 49D8C975
		/// @DnDInput : 3
		/// @DnDParent : 59A4922B
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "expr_1" "false"
		/// @DnDArgument : "expr_2" "false"
		/// @DnDArgument : "var" "on_ground"
		/// @DnDArgument : "var_1" "second_jump"
		/// @DnDArgument : "var_2" "enemy_bounce"
		on_ground = true;
		second_jump = false;
		enemy_bounce = false;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4A9179EA
		/// @DnDParent : 59A4922B
		/// @DnDArgument : "var" "dis_to_num(hsp, walk_spd)"
		/// @DnDArgument : "op" "2"
		if(dis_to_num(hsp, walk_spd) > 0)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1F835452
			/// @DnDParent : 4A9179EA
			/// @DnDArgument : "var" "hsp"
			/// @DnDArgument : "op" "2"
			if(hsp > 0)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 49D3EA5D
				/// @DnDParent : 1F835452
				/// @DnDArgument : "expr" "-0.1"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "hsp"
				hsp += -0.1;
			}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7236A143
			/// @DnDParent : 4A9179EA
			/// @DnDArgument : "var" "hsp"
			/// @DnDArgument : "op" "1"
			if(hsp < 0)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 48A91F68
				/// @DnDParent : 7236A143
				/// @DnDArgument : "expr" "0.1"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "hsp"
				hsp += 0.1;
			}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 15BABF80
			/// @DnDParent : 4A9179EA
			/// @DnDArgument : "var" "dis_to_num(hsp, 0)"
			/// @DnDArgument : "op" "1"
			/// @DnDArgument : "value" "0.2"
			if(dis_to_num(hsp, 0) < 0.2)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 66B800B8
				/// @DnDParent : 15BABF80
				/// @DnDArgument : "var" "hsp"
				hsp = 0;
			}
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 72AA7092
	/// @DnDParent : 4B8191B5
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

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 5D7AEE7A
	/// @DnDParent : 4B8191B5
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "5"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "target" "closestPlatform"
	/// @DnDArgument : "object" "obj_movingPlatform"
	/// @DnDSaveInfo : "object" "obj_movingPlatform"
	var l5D7AEE7A_0 = instance_place(x + 0, y + 5, obj_movingPlatform);
	closestPlatform = l5D7AEE7A_0;
	if ((l5D7AEE7A_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 776C834A
		/// @DnDParent : 5D7AEE7A
		/// @DnDArgument : "var" "on_ground"
		/// @DnDArgument : "value" "true"
		if(on_ground == true)
		{
			/// @DnDAction : YoYo Games.Common.Exit_Event
			/// @DnDVersion : 1
			/// @DnDHash : 3D4D9E20
			/// @DnDParent : 776C834A
			exit;
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 41DF0EA2
		/// @DnDInput : 3
		/// @DnDParent : 5D7AEE7A
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "expr_1" "false"
		/// @DnDArgument : "expr_2" "false"
		/// @DnDArgument : "var" "on_ground"
		/// @DnDArgument : "var_1" "second_jump"
		/// @DnDArgument : "var_2" "enemy_bounce"
		on_ground = true;
		second_jump = false;
		enemy_bounce = false;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3092F14A
		/// @DnDParent : 5D7AEE7A
		/// @DnDArgument : "var" "dis_to_num(hsp, walk_spd)"
		/// @DnDArgument : "op" "2"
		if(dis_to_num(hsp, walk_spd) > 0)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4B5035F5
			/// @DnDParent : 3092F14A
			/// @DnDArgument : "var" "hsp"
			/// @DnDArgument : "op" "2"
			if(hsp > 0)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 7A25EC87
				/// @DnDParent : 4B5035F5
				/// @DnDArgument : "expr" "-0.1"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "hsp"
				hsp += -0.1;
			}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5D5F36C8
			/// @DnDParent : 3092F14A
			/// @DnDArgument : "var" "hsp"
			/// @DnDArgument : "op" "1"
			if(hsp < 0)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 4C38ADC6
				/// @DnDParent : 5D5F36C8
				/// @DnDArgument : "expr" "0.1"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "hsp"
				hsp += 0.1;
			}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 141D765F
			/// @DnDParent : 3092F14A
			/// @DnDArgument : "var" "dis_to_num(hsp, 0)"
			/// @DnDArgument : "op" "1"
			/// @DnDArgument : "value" "0.2"
			if(dis_to_num(hsp, 0) < 0.2)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 778ED9D8
				/// @DnDParent : 141D765F
				/// @DnDArgument : "var" "hsp"
				hsp = 0;
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3547A103
		/// @DnDParent : 5D7AEE7A
		/// @DnDArgument : "expr" "closestPlatform.hsp"
		/// @DnDArgument : "var" "platform_speed"
		platform_speed = closestPlatform.hsp;
	
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 3F170154
		/// @DnDParent : 5D7AEE7A
		/// @DnDArgument : "x" "0"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "closestPlatform.y"
		x += 0;
		y = closestPlatform.y;
	}
}