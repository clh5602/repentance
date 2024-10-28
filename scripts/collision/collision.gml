/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 3DE42F18
/// @DnDArgument : "funcName" "collision"
function collision() 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3074D8E0
	/// @DnDParent : 3DE42F18
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "jump"
	jump = false;

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 1F4AD4D7
	/// @DnDParent : 3DE42F18
	/// @DnDArgument : "x" "hsp"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "target" "wall_id"
	/// @DnDArgument : "target_temp" "1"
	/// @DnDArgument : "object" "obj_wall"
	/// @DnDSaveInfo : "object" "obj_wall"
	var l1F4AD4D7_0 = instance_place(x + hsp, y + 0, obj_wall);
	var wall_id = l1F4AD4D7_0;
	if ((l1F4AD4D7_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 013EC681
		/// @DnDParent : 1F4AD4D7
		/// @DnDArgument : "var" "collide"
		/// @DnDArgument : "value" "false"
		var collide = false;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 476CDFE9
		/// @DnDParent : 1F4AD4D7
		/// @DnDArgument : "var" "wall_id.sprite_index"
		/// @DnDArgument : "value" "spr_shallowSlope"
		if(wall_id.sprite_index == spr_shallowSlope)
		{
			/// @DnDAction : YoYo Games.Loops.While_Loop
			/// @DnDVersion : 1
			/// @DnDHash : 6C4C3C94
			/// @DnDParent : 476CDFE9
			/// @DnDArgument : "var" "collide"
			/// @DnDArgument : "value" "false"
			while ((collide == false)) {
				/// @DnDAction : YoYo Games.Collisions.If_Object_At
				/// @DnDVersion : 1.1
				/// @DnDHash : 15AF9B98
				/// @DnDParent : 6C4C3C94
				/// @DnDArgument : "x" "hsp"
				/// @DnDArgument : "x_relative" "1"
				/// @DnDArgument : "y_relative" "1"
				/// @DnDArgument : "object" "obj_wall"
				/// @DnDSaveInfo : "object" "obj_wall"
				var l15AF9B98_0 = instance_place(x + hsp, y + 0, obj_wall);
				if ((l15AF9B98_0 > 0))
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 5DA001D0
					/// @DnDParent : 15AF9B98
					/// @DnDArgument : "expr" "-1"
					/// @DnDArgument : "expr_relative" "1"
					/// @DnDArgument : "var" "y"
					y += -1;
				}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 103822BB
				/// @DnDParent : 6C4C3C94
				else
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 384041CB
					/// @DnDParent : 103822BB
					/// @DnDArgument : "expr" "true"
					/// @DnDArgument : "var" "collide"
					collide = true;
				}
			}
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7E2B78F8
		/// @DnDParent : 1F4AD4D7
		/// @DnDArgument : "var" "wall_id.sprite_index"
		/// @DnDArgument : "value" "spr_steepSlope"
		if(wall_id.sprite_index == spr_steepSlope)
		{
			/// @DnDAction : YoYo Games.Loops.While_Loop
			/// @DnDVersion : 1
			/// @DnDHash : 62D3089C
			/// @DnDParent : 7E2B78F8
			/// @DnDArgument : "var" "collide"
			/// @DnDArgument : "value" "false"
			while ((collide == false)) {
				/// @DnDAction : YoYo Games.Collisions.If_Object_At
				/// @DnDVersion : 1.1
				/// @DnDHash : 72B326C0
				/// @DnDParent : 62D3089C
				/// @DnDArgument : "x" "hsp"
				/// @DnDArgument : "x_relative" "1"
				/// @DnDArgument : "y_relative" "1"
				/// @DnDArgument : "object" "obj_wall"
				/// @DnDSaveInfo : "object" "obj_wall"
				var l72B326C0_0 = instance_place(x + hsp, y + 0, obj_wall);
				if ((l72B326C0_0 > 0))
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 433B73DD
					/// @DnDParent : 72B326C0
					/// @DnDArgument : "expr" "-1"
					/// @DnDArgument : "expr_relative" "1"
					/// @DnDArgument : "var" "y"
					y += -1;
				}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 07F953EE
				/// @DnDParent : 62D3089C
				else
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 645A86C1
					/// @DnDParent : 07F953EE
					/// @DnDArgument : "expr" "true"
					/// @DnDArgument : "var" "collide"
					collide = true;
				}
			}
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0A19CF9B
		/// @DnDParent : 1F4AD4D7
		/// @DnDArgument : "var" "collide"
		/// @DnDArgument : "value" "false"
		if(collide == false)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6638A8B4
			/// @DnDParent : 0A19CF9B
			/// @DnDArgument : "var" "wall_id.wall_jump"
			/// @DnDArgument : "value" "true"
			if(wall_id.wall_jump == true)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 44E9CF43
				/// @DnDParent : 6638A8B4
				/// @DnDArgument : "expr" "9"
				/// @DnDArgument : "var" "hug_wall_count"
				hug_wall_count = 9;
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 02029E67
				/// @DnDParent : 6638A8B4
				/// @DnDArgument : "var" "vsp"
				/// @DnDArgument : "op" "2"
				/// @DnDArgument : "value" "2"
				if(vsp > 2)
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 705E8230
					/// @DnDParent : 02029E67
					/// @DnDArgument : "expr" "2"
					/// @DnDArgument : "var" "vsp"
					vsp = 2;
				}
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 3927119F
				/// @DnDParent : 6638A8B4
				/// @DnDArgument : "var" "wall_id.x"
				/// @DnDArgument : "op" "2"
				/// @DnDArgument : "value" "x"
				if(wall_id.x > x)
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 6C6CA7A5
					/// @DnDInput : 2
					/// @DnDParent : 3927119F
					/// @DnDArgument : "expr" "1"
					/// @DnDArgument : "expr_1" "1"
					/// @DnDArgument : "var" "wall_side"
					/// @DnDArgument : "var_1" "facing"
					wall_side = 1;
					facing = 1;
				}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 09EB656B
				/// @DnDParent : 6638A8B4
				else
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 00EDB74F
					/// @DnDInput : 2
					/// @DnDParent : 09EB656B
					/// @DnDArgument : "expr" "-1"
					/// @DnDArgument : "expr_1" "-1"
					/// @DnDArgument : "var" "wall_side"
					/// @DnDArgument : "var_1" "facing"
					wall_side = -1;
					facing = -1;
				}
			}
		
			/// @DnDAction : YoYo Games.Loops.While_Loop
			/// @DnDVersion : 1
			/// @DnDHash : 27B42E7E
			/// @DnDParent : 0A19CF9B
			/// @DnDArgument : "var" "collide"
			/// @DnDArgument : "value" "false"
			while ((collide == false)) {
				/// @DnDAction : YoYo Games.Collisions.If_Object_At
				/// @DnDVersion : 1.1
				/// @DnDHash : 04B75F87
				/// @DnDParent : 27B42E7E
				/// @DnDArgument : "x" "sign(hsp)"
				/// @DnDArgument : "x_relative" "1"
				/// @DnDArgument : "y_relative" "1"
				/// @DnDArgument : "object" "obj_wall"
				/// @DnDArgument : "not" "1"
				/// @DnDSaveInfo : "object" "obj_wall"
				var l04B75F87_0 = instance_place(x + sign(hsp), y + 0, obj_wall);
				if (!(l04B75F87_0 > 0))
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 0AF9A9BD
					/// @DnDParent : 04B75F87
					/// @DnDArgument : "expr" "sign(hsp)"
					/// @DnDArgument : "expr_relative" "1"
					/// @DnDArgument : "var" "x"
					x += sign(hsp);
				}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 7FC131CF
				/// @DnDParent : 27B42E7E
				else
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 2EBFCFDE
					/// @DnDParent : 7FC131CF
					/// @DnDArgument : "expr" "true"
					/// @DnDArgument : "var" "collide"
					collide = true;
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 521A0AA0
					/// @DnDParent : 7FC131CF
					/// @DnDArgument : "var" "hsp"
					hsp = 0;
				}
			}
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 5ADC3A06
	/// @DnDParent : 3DE42F18
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7523AECD
		/// @DnDParent : 5ADC3A06
		/// @DnDArgument : "var" "hug_wall_count"
		/// @DnDArgument : "op" "2"
		if(hug_wall_count > 0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7DC89A7C
			/// @DnDParent : 7523AECD
			/// @DnDArgument : "expr" "-1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "hug_wall_count"
			hug_wall_count += -1;
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7385E8B7
	/// @DnDParent : 3DE42F18
	/// @DnDArgument : "var" "hug_wall_count"
	/// @DnDArgument : "op" "3"
	if(hug_wall_count <= 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 10F0BADC
		/// @DnDParent : 7385E8B7
		/// @DnDArgument : "expr" "hsp"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "x"
		x += hsp;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 370E71A8
		/// @DnDParent : 7385E8B7
		/// @DnDArgument : "var" "on_ground"
		/// @DnDArgument : "value" "true"
		if(on_ground == true)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2965E6CE
			/// @DnDParent : 370E71A8
			/// @DnDArgument : "var" "dis_to_num(hsp, 0)"
			/// @DnDArgument : "op" "2"
			/// @DnDArgument : "value" "3"
			if(dis_to_num(hsp, 0) > 3)
			{
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 2B7B67F8
				/// @DnDParent : 2965E6CE
				/// @DnDArgument : "var" "running"
				/// @DnDArgument : "value" "2"
				if(running == 2)
				{
					/// @DnDAction : YoYo Games.Common.Execute_Script
					/// @DnDVersion : 1.1
					/// @DnDHash : 644164F3
					/// @DnDParent : 2B7B67F8
					/// @DnDArgument : "script" "make_dust"
					/// @DnDArgument : "arg" "facing*-5"
					/// @DnDSaveInfo : "script" "make_dust"
					script_execute(make_dust, facing*-5);
				}
			}
		}
	}

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 13AAEA5C
	/// @DnDParent : 3DE42F18
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "vsp"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_wall"
	/// @DnDSaveInfo : "object" "obj_wall"
	var l13AAEA5C_0 = instance_place(x + 0, y + vsp, obj_wall);
	if ((l13AAEA5C_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5AC26EE2
		/// @DnDParent : 13AAEA5C
		/// @DnDArgument : "var" "collide"
		/// @DnDArgument : "value" "false"
		var collide = false;
	
		/// @DnDAction : YoYo Games.Loops.While_Loop
		/// @DnDVersion : 1
		/// @DnDHash : 063E498F
		/// @DnDParent : 13AAEA5C
		/// @DnDArgument : "var" "collide"
		/// @DnDArgument : "value" "false"
		while ((collide == false)) {
			/// @DnDAction : YoYo Games.Collisions.If_Object_At
			/// @DnDVersion : 1.1
			/// @DnDHash : 2F0BBAA6
			/// @DnDParent : 063E498F
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y" "sign(vsp)"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "object" "obj_wall"
			/// @DnDArgument : "not" "1"
			/// @DnDSaveInfo : "object" "obj_wall"
			var l2F0BBAA6_0 = instance_place(x + 0, y + sign(vsp), obj_wall);
			if (!(l2F0BBAA6_0 > 0))
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 55F6698B
				/// @DnDParent : 2F0BBAA6
				/// @DnDArgument : "expr" "sign(vsp)"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "y"
				y += sign(vsp);
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 0A496885
			/// @DnDParent : 063E498F
			else
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 0DFD6855
				/// @DnDParent : 0A496885
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "collide"
				collide = true;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 5FADA648
				/// @DnDParent : 0A496885
				/// @DnDArgument : "var" "vsp"
				vsp = 0;
			}
		}
	}

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 157669A1
	/// @DnDParent : 3DE42F18
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "vsp"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_movingPlatform"
	/// @DnDSaveInfo : "object" "obj_movingPlatform"
	var l157669A1_0 = instance_place(x + 0, y + vsp, obj_movingPlatform);
	if ((l157669A1_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5833DDA2
		/// @DnDParent : 157669A1
		/// @DnDArgument : "var" "vsp"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "global.grav"
		if(vsp > global.grav)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 19883A60
			/// @DnDParent : 5833DDA2
			/// @DnDArgument : "var" "y"
			/// @DnDArgument : "op" "3"
			/// @DnDArgument : "value" "obj_movingPlatform.y"
			if(y <= obj_movingPlatform.y)
			{
				/// @DnDAction : YoYo Games.Common.Temp_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 089A6EDE
				/// @DnDParent : 19883A60
				/// @DnDArgument : "var" "collide"
				/// @DnDArgument : "value" "false"
				var collide = false;
			
				/// @DnDAction : YoYo Games.Loops.While_Loop
				/// @DnDVersion : 1
				/// @DnDHash : 6BC237FA
				/// @DnDParent : 19883A60
				/// @DnDArgument : "var" "collide"
				/// @DnDArgument : "value" "false"
				while ((collide == false)) {
					/// @DnDAction : YoYo Games.Collisions.If_Object_At
					/// @DnDVersion : 1.1
					/// @DnDHash : 25D3BD53
					/// @DnDParent : 6BC237FA
					/// @DnDArgument : "x_relative" "1"
					/// @DnDArgument : "y" "sign(vsp)"
					/// @DnDArgument : "y_relative" "1"
					/// @DnDArgument : "object" "obj_movingPlatform"
					/// @DnDArgument : "not" "1"
					/// @DnDSaveInfo : "object" "obj_movingPlatform"
					var l25D3BD53_0 = instance_place(x + 0, y + sign(vsp), obj_movingPlatform);
					if (!(l25D3BD53_0 > 0))
					{
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 533A309A
						/// @DnDParent : 25D3BD53
						/// @DnDArgument : "expr" "sign(vsp)"
						/// @DnDArgument : "expr_relative" "1"
						/// @DnDArgument : "var" "y"
						y += sign(vsp);
					}
				
					/// @DnDAction : YoYo Games.Common.Else
					/// @DnDVersion : 1
					/// @DnDHash : 6D000E52
					/// @DnDParent : 6BC237FA
					else
					{
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 18FFA562
						/// @DnDParent : 6D000E52
						/// @DnDArgument : "expr" "true"
						/// @DnDArgument : "var" "collide"
						collide = true;
					
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 027FD5D6
						/// @DnDParent : 6D000E52
						/// @DnDArgument : "var" "vsp"
						vsp = 0;
					}
				}
			}
		}
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 67689F0B
	/// @DnDParent : 3DE42F18
	/// @DnDArgument : "expr" "vsp"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "y"
	y += vsp;
}