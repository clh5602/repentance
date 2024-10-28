/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 7DA5CEBA
/// @DnDArgument : "funcName" "get_input"
function get_input() 
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 47827DB2
	/// @DnDParent : 7DA5CEBA
	/// @DnDArgument : "var" "moving"
	/// @DnDArgument : "value" "false"
	var moving = false;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 25891E66
	/// @DnDParent : 7DA5CEBA
	/// @DnDArgument : "key" "ord("D")"
	var l25891E66_0;
	l25891E66_0 = keyboard_check(ord("D"));
	if (l25891E66_0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2867C336
		/// @DnDParent : 25891E66
		/// @DnDArgument : "var" "blocking"
		/// @DnDArgument : "value" "false"
		if(blocking == false)
		{
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2DDDC4C5
			/// @DnDParent : 2867C336
			/// @DnDArgument : "var" "moving"
			/// @DnDArgument : "value" "true"
			var moving = true;
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 65EF4DE4
			/// @DnDParent : 2867C336
			/// @DnDArgument : "var" "on_ground"
			/// @DnDArgument : "value" "true"
			if(on_ground == true)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 39F49623
				/// @DnDParent : 65EF4DE4
				/// @DnDArgument : "expr" "(walk_spd+platform_speed)*running"
				/// @DnDArgument : "var" "hsp"
				hsp = (walk_spd+platform_speed)*running;
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 55FF56E7
			/// @DnDParent : 2867C336
			else
			{
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 42696433
				/// @DnDParent : 55FF56E7
				/// @DnDArgument : "var" "hsp"
				/// @DnDArgument : "op" "1"
				/// @DnDArgument : "value" "(walk_spd+platform_speed)*running"
				if(hsp < (walk_spd+platform_speed)*running)
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 30A6DBEC
					/// @DnDParent : 42696433
					/// @DnDArgument : "expr" "(walk_spd+platform_speed)/2*running"
					/// @DnDArgument : "expr_relative" "1"
					/// @DnDArgument : "var" "hsp"
					hsp += (walk_spd+platform_speed)/2*running;
				}
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 159D1A44
				/// @DnDParent : 55FF56E7
				/// @DnDArgument : "var" "hsp"
				/// @DnDArgument : "op" "2"
				/// @DnDArgument : "value" "4*running"
				if(hsp > 4*running)
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 3BB68C97
					/// @DnDParent : 159D1A44
					/// @DnDArgument : "expr" "4*running"
					/// @DnDArgument : "var" "hsp"
					hsp = 4*running;
				}
			}
		}
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 11801F9D
	/// @DnDParent : 7DA5CEBA
	/// @DnDArgument : "key" "ord("A")"
	var l11801F9D_0;
	l11801F9D_0 = keyboard_check(ord("A"));
	if (l11801F9D_0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0D8D77EA
		/// @DnDParent : 11801F9D
		/// @DnDArgument : "var" "blocking"
		/// @DnDArgument : "value" "false"
		if(blocking == false)
		{
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 55C82F0F
			/// @DnDParent : 0D8D77EA
			/// @DnDArgument : "var" "moving"
			/// @DnDArgument : "value" "true"
			var moving = true;
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 658C1C87
			/// @DnDParent : 0D8D77EA
			/// @DnDArgument : "var" "on_ground"
			/// @DnDArgument : "value" "true"
			if(on_ground == true)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 71056EC2
				/// @DnDParent : 658C1C87
				/// @DnDArgument : "expr" "(-walk_spd+platform_speed)*running"
				/// @DnDArgument : "var" "hsp"
				hsp = (-walk_spd+platform_speed)*running;
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 3C2F0820
			/// @DnDParent : 0D8D77EA
			else
			{
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 5E66D238
				/// @DnDParent : 3C2F0820
				/// @DnDArgument : "var" "hsp"
				/// @DnDArgument : "op" "2"
				/// @DnDArgument : "value" "(-walk_spd+platform_speed)*running"
				if(hsp > (-walk_spd+platform_speed)*running)
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 4E5454EF
					/// @DnDParent : 5E66D238
					/// @DnDArgument : "expr" "(walk_spd+platform_speed)/-2*running"
					/// @DnDArgument : "expr_relative" "1"
					/// @DnDArgument : "var" "hsp"
					hsp += (walk_spd+platform_speed)/-2*running;
				}
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 26CCC28A
				/// @DnDParent : 3C2F0820
				/// @DnDArgument : "var" "hsp"
				/// @DnDArgument : "op" "1"
				/// @DnDArgument : "value" "-4*running"
				if(hsp < -4*running)
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 4BC0E9D6
					/// @DnDParent : 26CCC28A
					/// @DnDArgument : "expr" "-4*running"
					/// @DnDArgument : "var" "hsp"
					hsp = -4*running;
				}
			}
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 417D6D57
	/// @DnDParent : 7DA5CEBA
	/// @DnDArgument : "var" "moving"
	/// @DnDArgument : "value" "false"
	if(moving == false)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 150A3A43
		/// @DnDParent : 417D6D57
		/// @DnDArgument : "expr" "platform_speed"
		/// @DnDArgument : "var" "hsp"
		hsp = platform_speed;
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 00B7DDA6
	/// @DnDParent : 7DA5CEBA
	/// @DnDArgument : "key" "ord("J")"
	var l00B7DDA6_0;
	l00B7DDA6_0 = keyboard_check_pressed(ord("J"));
	if (l00B7DDA6_0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4F18480D
		/// @DnDParent : 00B7DDA6
		/// @DnDArgument : "var" "blocking"
		/// @DnDArgument : "value" "false"
		if(blocking == false)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 46AE24AF
			/// @DnDParent : 4F18480D
			/// @DnDArgument : "var" "on_ground"
			/// @DnDArgument : "value" "true"
			if(on_ground == true)
			{
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 21909273
				/// @DnDParent : 46AE24AF
				/// @DnDArgument : "var" "ds_list_find_index(global.moves, "jump")"
				/// @DnDArgument : "not" "1"
				/// @DnDArgument : "value" "-1"
				if(!(ds_list_find_index(global.moves, "jump") == -1))
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 2342B645
					/// @DnDParent : 21909273
					/// @DnDArgument : "expr" "true"
					/// @DnDArgument : "var" "jump"
					jump = true;
				}
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 28111BFB
			/// @DnDParent : 4F18480D
			else
			{
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 363B9C92
				/// @DnDParent : 28111BFB
				/// @DnDArgument : "var" "hug_wall_count"
				/// @DnDArgument : "op" "2"
				if(hug_wall_count > 0)
				{
					/// @DnDAction : YoYo Games.Common.If_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 21A7464E
					/// @DnDParent : 363B9C92
					/// @DnDArgument : "var" "ds_list_find_index(global.moves, "wallJump")"
					/// @DnDArgument : "not" "1"
					/// @DnDArgument : "value" "-1"
					if(!(ds_list_find_index(global.moves, "wallJump") == -1))
					{
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 2EA484CD
						/// @DnDParent : 21A7464E
						/// @DnDArgument : "expr" "true"
						/// @DnDArgument : "var" "jump"
						jump = true;
					}
				}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 316C83B8
				/// @DnDParent : 28111BFB
				else
				{
					/// @DnDAction : YoYo Games.Common.If_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 31B1B178
					/// @DnDParent : 316C83B8
					/// @DnDArgument : "var" "second_jump"
					/// @DnDArgument : "value" "false"
					if(second_jump == false)
					{
						/// @DnDAction : YoYo Games.Common.If_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 3C2A3D78
						/// @DnDParent : 31B1B178
						/// @DnDArgument : "var" "ds_list_find_index(global.moves, "airJump")"
						/// @DnDArgument : "not" "1"
						/// @DnDArgument : "value" "-1"
						if(!(ds_list_find_index(global.moves, "airJump") == -1))
						{
							/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 492C5A05
							/// @DnDInput : 2
							/// @DnDParent : 3C2A3D78
							/// @DnDArgument : "expr" "true"
							/// @DnDArgument : "expr_1" "true"
							/// @DnDArgument : "var" "jump"
							/// @DnDArgument : "var_1" "second_jump"
							jump = true;
							second_jump = true;
						}
					}
				}
			}
		}
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 11BFF424
	/// @DnDParent : 7DA5CEBA
	/// @DnDArgument : "key" "ord("K")"
	var l11BFF424_0;
	l11BFF424_0 = keyboard_check_pressed(ord("K"));
	if (l11BFF424_0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2B207D75
		/// @DnDParent : 11BFF424
		/// @DnDArgument : "var" "blocking"
		/// @DnDArgument : "value" "false"
		if(blocking == false)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 17E2BF0C
			/// @DnDParent : 2B207D75
			/// @DnDArgument : "var" "ds_list_find_index(global.moves, "shoot")"
			/// @DnDArgument : "not" "1"
			/// @DnDArgument : "value" "-1"
			if(!(ds_list_find_index(global.moves, "shoot") == -1))
			{
				/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
				/// @DnDVersion : 1
				/// @DnDHash : 4CC48095
				/// @DnDParent : 17E2BF0C
				/// @DnDArgument : "obj" "obj_attack"
				/// @DnDArgument : "not" "1"
				/// @DnDSaveInfo : "obj" "obj_attack"
				var l4CC48095_0 = false;
				l4CC48095_0 = instance_exists(obj_attack);
				if(!l4CC48095_0)
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 1AD79211
					/// @DnDInput : 2
					/// @DnDParent : 4CC48095
					/// @DnDArgument : "expr" "spr_playerShoot"
					/// @DnDArgument : "var" "sprite_index"
					/// @DnDArgument : "var_1" "image_index"
					sprite_index = spr_playerShoot;
					image_index = 0;
				
					/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 02CD4470
					/// @DnDParent : 4CC48095
					/// @DnDArgument : "xpos_relative" "1"
					/// @DnDArgument : "ypos_relative" "1"
					/// @DnDArgument : "objectid" "obj_attack"
					/// @DnDSaveInfo : "objectid" "obj_attack"
					instance_create_layer(x + 0, y + 0, "Instances", obj_attack);
				}
			}
		}
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 335FF5D0
	/// @DnDParent : 7DA5CEBA
	/// @DnDArgument : "key" "ord("J")"
	/// @DnDArgument : "not" "1"
	var l335FF5D0_0;
	l335FF5D0_0 = keyboard_check(ord("J"));
	if (!l335FF5D0_0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 54E6BC55
		/// @DnDParent : 335FF5D0
		/// @DnDArgument : "var" "blocking"
		/// @DnDArgument : "value" "false"
		if(blocking == false)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3CB3A04B
			/// @DnDParent : 54E6BC55
			/// @DnDArgument : "var" "enemy_bounce"
			/// @DnDArgument : "value" "false"
			if(enemy_bounce == false)
			{
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 5011DB76
				/// @DnDParent : 3CB3A04B
				/// @DnDArgument : "var" "vsp"
				/// @DnDArgument : "op" "1"
				if(vsp < 0)
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 3BAAC456
					/// @DnDParent : 5011DB76
					/// @DnDArgument : "var" "vsp"
					vsp = 0;
				}
			}
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 15DE6139
	/// @DnDParent : 7DA5CEBA
	/// @DnDArgument : "var" "blocking"
	/// @DnDArgument : "value" "false"
	if(blocking == false)
	{
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 41B23473
		/// @DnDParent : 15DE6139
		/// @DnDArgument : "key" "ord("K")"
		var l41B23473_0;
		l41B23473_0 = keyboard_check(ord("K"));
		if (l41B23473_0)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 155D5D56
			/// @DnDParent : 41B23473
			/// @DnDArgument : "var" "ds_list_find_index(global.moves, "run")"
			/// @DnDArgument : "not" "1"
			/// @DnDArgument : "value" "-1"
			if(!(ds_list_find_index(global.moves, "run") == -1))
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 5930A621
				/// @DnDParent : 155D5D56
				/// @DnDArgument : "expr" "2"
				/// @DnDArgument : "var" "running"
				running = 2;
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 7F243520
			/// @DnDParent : 41B23473
			else
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 1F237E63
				/// @DnDParent : 7F243520
				/// @DnDArgument : "expr" "1"
				/// @DnDArgument : "var" "running"
				running = 1;
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 27687C22
		/// @DnDParent : 15DE6139
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 040D8783
			/// @DnDParent : 27687C22
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "running"
			running = 1;
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 302ADC36
	/// @DnDParent : 7DA5CEBA
	/// @DnDArgument : "var" "on_ground"
	/// @DnDArgument : "value" "true"
	if(on_ground == true)
	{
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 21F06157
		/// @DnDParent : 302ADC36
		/// @DnDArgument : "key" "ord("S")"
		var l21F06157_0;
		l21F06157_0 = keyboard_check(ord("S"));
		if (l21F06157_0)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2A3ACA69
			/// @DnDParent : 21F06157
			/// @DnDArgument : "var" "ds_list_find_index(global.moves, "block")"
			/// @DnDArgument : "not" "1"
			/// @DnDArgument : "value" "-1"
			if(!(ds_list_find_index(global.moves, "block") == -1))
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 03329073
				/// @DnDParent : 2A3ACA69
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "blocking"
				blocking = true;
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 7473D864
			/// @DnDParent : 21F06157
			else
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 4CA71A8B
				/// @DnDParent : 7473D864
				/// @DnDArgument : "expr" "false"
				/// @DnDArgument : "var" "blocking"
				blocking = false;
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 3C7E2B49
		/// @DnDParent : 302ADC36
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 11C4B6CB
			/// @DnDParent : 3C7E2B49
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "var" "blocking"
			blocking = false;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 5259FF89
	/// @DnDParent : 7DA5CEBA
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 000AF166
		/// @DnDParent : 5259FF89
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "blocking"
		blocking = false;
	}
}