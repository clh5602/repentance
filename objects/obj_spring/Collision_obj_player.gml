/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6AA871D8
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "spr_compress"
if(!(sprite_index == spr_compress))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 246C3FD2
	/// @DnDParent : 6AA871D8
	/// @DnDArgument : "var" "obj_player.vsp"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "global.grav"
	if(obj_player.vsp > global.grav)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7C0EE4E1
		/// @DnDParent : 246C3FD2
		/// @DnDArgument : "var" "obj_player.lock"
		/// @DnDArgument : "value" "false"
		if(obj_player.lock == false)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 73E6B9C2
			/// @DnDInput : 6
			/// @DnDParent : 7C0EE4E1
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "expr_1" "spr_compress"
			/// @DnDArgument : "expr_3" "true"
			/// @DnDArgument : "expr_4" "y+9"
			/// @DnDArgument : "expr_5" "spr_playerIdle"
			/// @DnDArgument : "var" "obj_player.lock"
			/// @DnDArgument : "var_1" "sprite_index"
			/// @DnDArgument : "var_2" "image_index"
			/// @DnDArgument : "var_3" "obj_player.enemy_bounce"
			/// @DnDArgument : "var_4" "obj_player.y"
			/// @DnDArgument : "var_5" "obj_player.sprite_index"
			obj_player.lock = true;
			sprite_index = spr_compress;
			image_index = 0;
			obj_player.enemy_bounce = true;
			obj_player.y = y+9;
			obj_player.sprite_index = spr_playerIdle;
		}
	}
}