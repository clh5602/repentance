/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 2473E4FB
/// @DnDArgument : "funcName" "animation"
function animation() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 425A31EF
	/// @DnDParent : 2473E4FB
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "value" "spr_playerShoot"
	if(sprite_index == spr_playerShoot)
	{
		/// @DnDAction : YoYo Games.Common.Exit_Event
		/// @DnDVersion : 1
		/// @DnDHash : 0324BAF5
		/// @DnDParent : 425A31EF
		exit;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5F5C655A
	/// @DnDParent : 2473E4FB
	/// @DnDArgument : "var" "hsp"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "platform_speed"
	if(!(hsp == platform_speed))
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 263710EB
		/// @DnDParent : 5F5C655A
		/// @DnDArgument : "var" "on_ground"
		/// @DnDArgument : "value" "true"
		if(on_ground == true)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1042FB98
			/// @DnDParent : 263710EB
			/// @DnDArgument : "expr" "spr_walk"
			/// @DnDArgument : "var" "sprite_index"
			sprite_index = spr_walk;
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4EFAD3B8
		/// @DnDParent : 5F5C655A
		/// @DnDArgument : "var" "hsp"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "platform_speed"
		if(hsp > platform_speed)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0B37276A
			/// @DnDParent : 4EFAD3B8
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "facing"
			facing = 1;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 28018E6D
		/// @DnDParent : 5F5C655A
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 22D51ED6
			/// @DnDParent : 28018E6D
			/// @DnDArgument : "expr" "-1"
			/// @DnDArgument : "var" "facing"
			facing = -1;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 404C63A7
	/// @DnDParent : 2473E4FB
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 453F5796
		/// @DnDParent : 404C63A7
		/// @DnDArgument : "expr" "spr_idle"
		/// @DnDArgument : "var" "sprite_index"
		sprite_index = spr_idle;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 44923F4C
	/// @DnDParent : 2473E4FB
	/// @DnDArgument : "var" "on_ground"
	/// @DnDArgument : "value" "false"
	if(on_ground == false)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1A008B4B
		/// @DnDParent : 44923F4C
		/// @DnDArgument : "var" "vsp"
		/// @DnDArgument : "op" "2"
		if(vsp > 0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 20DCE215
			/// @DnDParent : 1A008B4B
			/// @DnDArgument : "expr" "spr_downAir"
			/// @DnDArgument : "var" "sprite_index"
			sprite_index = spr_downAir;
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 422E2103
		/// @DnDParent : 44923F4C
		/// @DnDArgument : "var" "vsp"
		/// @DnDArgument : "op" "1"
		if(vsp < 0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2B19D2E8
			/// @DnDParent : 422E2103
			/// @DnDArgument : "expr" "spr_upAir"
			/// @DnDArgument : "var" "sprite_index"
			sprite_index = spr_upAir;
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 324A1B02
		/// @DnDParent : 44923F4C
		/// @DnDArgument : "var" "hug_wall_count"
		/// @DnDArgument : "value" "9"
		if(hug_wall_count == 9)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 72C13548
			/// @DnDParent : 324A1B02
			/// @DnDArgument : "expr" "spr_wallHug"
			/// @DnDArgument : "var" "sprite_index"
			sprite_index = spr_wallHug;
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 64860F47
			/// @DnDParent : 324A1B02
			/// @DnDArgument : "var" "vsp"
			/// @DnDArgument : "op" "2"
			if(vsp > 0)
			{
				/// @DnDAction : YoYo Games.Common.Execute_Script
				/// @DnDVersion : 1.1
				/// @DnDHash : 40A5B51F
				/// @DnDParent : 64860F47
				/// @DnDArgument : "script" "make_dust"
				/// @DnDArgument : "arg" "facing*9"
				/// @DnDSaveInfo : "script" "make_dust"
				script_execute(make_dust, facing*9);
			}
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7A824BCF
	/// @DnDParent : 2473E4FB
	/// @DnDArgument : "var" "blocking"
	/// @DnDArgument : "value" "true"
	if(blocking == true)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 033F234E
		/// @DnDParent : 7A824BCF
		/// @DnDArgument : "expr" "spr_block"
		/// @DnDArgument : "var" "sprite_index"
		sprite_index = spr_block;
	}
}