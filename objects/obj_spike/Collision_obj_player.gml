/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 17FBA9F3
/// @DnDArgument : "var" "global.paused"
/// @DnDArgument : "value" "true"
if(global.paused == true)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 4F81E430
	/// @DnDParent : 17FBA9F3
	/// @DnDArgument : "speed" "0"
	image_speed = 0;

	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 36BCA24F
	/// @DnDParent : 17FBA9F3
	exit;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 2F80C6FA
else
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 0975D119
	/// @DnDParent : 2F80C6FA
	image_speed = 1;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 35B185ED
/// @DnDArgument : "var" "obj_player.blocking"
/// @DnDArgument : "value" "false"
if(obj_player.blocking == false)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4BC5E4FD
	/// @DnDParent : 35B185ED
	/// @DnDArgument : "var" "global.playerInvincible"
	/// @DnDArgument : "op" "3"
	if(global.playerInvincible <= 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 65543B51
		/// @DnDInput : 2
		/// @DnDParent : 4BC5E4FD
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "expr_1" "60"
		/// @DnDArgument : "var" "global.playerHP"
		/// @DnDArgument : "var_1" "global.playerInvincible"
		global.playerHP += -1;
		global.playerInvincible = 60;
	}
}