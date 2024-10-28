/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 05700DCC
/// @DnDArgument : "var" "global.paused"
/// @DnDArgument : "value" "true"
if(global.paused == true)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 1CF3094F
	/// @DnDParent : 05700DCC
	/// @DnDArgument : "speed" "0"
	image_speed = 0;

	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 3164BB6A
	/// @DnDParent : 05700DCC
	exit;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 6ED54BB5
else
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 1FDDFB86
	/// @DnDParent : 6ED54BB5
	image_speed = 1;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4EB65BED
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "spr_die"
if(!(sprite_index == spr_die))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 29093301
	/// @DnDParent : 4EB65BED
	/// @DnDArgument : "var" "obj_player.vsp"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "global.grav"
	if(obj_player.vsp > global.grav)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3ACAD511
		/// @DnDInput : 4
		/// @DnDParent : 29093301
		/// @DnDArgument : "expr" "spr_die"
		/// @DnDArgument : "expr_2" "-obj_player.jump_spd/1.3"
		/// @DnDArgument : "expr_3" "true"
		/// @DnDArgument : "var" "sprite_index"
		/// @DnDArgument : "var_1" "image_index"
		/// @DnDArgument : "var_2" "obj_player.vsp"
		/// @DnDArgument : "var_3" "obj_player.enemy_bounce"
		sprite_index = spr_die;
		image_index = 0;
		obj_player.vsp = -obj_player.jump_spd/1.3;
		obj_player.enemy_bounce = true;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 32ACAD0A
	/// @DnDParent : 4EB65BED
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1ABAC469
		/// @DnDParent : 32ACAD0A
		/// @DnDArgument : "var" "obj_player.y"
		/// @DnDArgument : "op" "3"
		/// @DnDArgument : "value" "y-16"
		if(obj_player.y <= y-16)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 54DE46FC
			/// @DnDInput : 4
			/// @DnDParent : 1ABAC469
			/// @DnDArgument : "expr" "spr_die"
			/// @DnDArgument : "expr_2" "-obj_player.jump_spd/1.3"
			/// @DnDArgument : "expr_3" "true"
			/// @DnDArgument : "var" "sprite_index"
			/// @DnDArgument : "var_1" "image_index"
			/// @DnDArgument : "var_2" "obj_player.vsp"
			/// @DnDArgument : "var_3" "obj_player.enemy_bounce"
			sprite_index = spr_die;
			image_index = 0;
			obj_player.vsp = -obj_player.jump_spd/1.3;
			obj_player.enemy_bounce = true;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 41AC0114
		/// @DnDParent : 32ACAD0A
		else
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 38271268
			/// @DnDParent : 41AC0114
			/// @DnDArgument : "var" "obj_player.blocking"
			/// @DnDArgument : "value" "false"
			if(obj_player.blocking == false)
			{
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 0E87D28E
				/// @DnDParent : 38271268
				/// @DnDArgument : "var" "global.playerInvincible"
				/// @DnDArgument : "op" "3"
				if(global.playerInvincible <= 0)
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 57FEB8FC
					/// @DnDInput : 2
					/// @DnDParent : 0E87D28E
					/// @DnDArgument : "expr" "-1"
					/// @DnDArgument : "expr_relative" "1"
					/// @DnDArgument : "expr_1" "60"
					/// @DnDArgument : "var" "global.playerHP"
					/// @DnDArgument : "var_1" "global.playerInvincible"
					global.playerHP += -1;
					global.playerInvincible = 60;
				}
			}
		}
	}
}