/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6A642871
/// @DnDArgument : "var" "global.paused"
/// @DnDArgument : "value" "true"
if(global.paused == true)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 2CD1CBE3
	/// @DnDParent : 6A642871
	/// @DnDArgument : "speed" "0"
	image_speed = 0;

	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 7FA97556
	/// @DnDParent : 6A642871
	exit;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 1C432297
else
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 3D797AB2
	/// @DnDParent : 1C432297
	image_speed = 1;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4DF9EA51
/// @DnDArgument : "var" "obj_player.blocking"
/// @DnDArgument : "value" "false"
if(obj_player.blocking == false)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 488AC77A
	/// @DnDParent : 4DF9EA51
	/// @DnDArgument : "var" "global.playerInvincible"
	/// @DnDArgument : "op" "3"
	if(global.playerInvincible <= 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 137DE3BD
		/// @DnDInput : 2
		/// @DnDParent : 488AC77A
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "expr_1" "60"
		/// @DnDArgument : "var" "global.playerHP"
		/// @DnDArgument : "var_1" "global.playerInvincible"
		global.playerHP += -1;
		global.playerInvincible = 60;
	}
}