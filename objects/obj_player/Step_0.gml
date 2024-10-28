/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7D0A279C
/// @DnDArgument : "var" "global.paused"
/// @DnDArgument : "value" "true"
if(global.paused == true)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 79022E92
	/// @DnDParent : 7D0A279C
	/// @DnDArgument : "speed" "0"
	image_speed = 0;

	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 07ACE843
	/// @DnDParent : 7D0A279C
	exit;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 022ACACB
else
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 330A4488
	/// @DnDParent : 022ACACB
	image_speed = 1;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3A358909
/// @DnDArgument : "var" "lock"
/// @DnDArgument : "value" "true"
if(lock == true)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 00C689A6
	/// @DnDParent : 3A358909
	exit;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 13E08F19
/// @DnDArgument : "var" "global.playerHP"
/// @DnDArgument : "op" "3"
if(global.playerHP <= 0)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 5640E431
	/// @DnDParent : 13E08F19
	/// @DnDArgument : "soundid" "snd_death"
	/// @DnDSaveInfo : "soundid" "snd_death"
	audio_play_sound(snd_death, 0, 0);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 15988B4D
	/// @DnDInput : 4
	/// @DnDParent : 13E08F19
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "expr_1" "spr_playerDeath"
	/// @DnDArgument : "expr_2" "true"
	/// @DnDArgument : "var" "lock"
	/// @DnDArgument : "var_1" "sprite_index"
	/// @DnDArgument : "var_2" "global.gameOver"
	/// @DnDArgument : "var_3" "image_index"
	lock = true;
	sprite_index = spr_playerDeath;
	global.gameOver = true;
	image_index = 0;

	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 44765A7C
	/// @DnDParent : 13E08F19
	exit;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0C56E520
/// @DnDArgument : "var" "global.playerInvincible"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "op" "3"
if(!(global.playerInvincible <= 0))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 75211078
	/// @DnDParent : 0C56E520
	/// @DnDArgument : "var" "global.playerInvincible%10"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "5"
	if(global.playerInvincible%10 >= 5)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 77F48473
		/// @DnDParent : 75211078
		/// @DnDArgument : "var" "trans"
		trans = 0;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 626F751A
	/// @DnDParent : 0C56E520
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 50354D54
		/// @DnDParent : 626F751A
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "trans"
		trans = 1;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 49452E21
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 122A49C3
	/// @DnDParent : 49452E21
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "trans"
	trans = 1;
}

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 169388BF
/// @DnDArgument : "script" "fail_safe"
/// @DnDSaveInfo : "script" "fail_safe"
script_execute(fail_safe);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 0E65FC3B
/// @DnDArgument : "script" "check_ground"
/// @DnDSaveInfo : "script" "check_ground"
script_execute(check_ground);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 339A0C02
/// @DnDArgument : "script" "get_input"
/// @DnDSaveInfo : "script" "get_input"
script_execute(get_input);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 5E60AF15
/// @DnDArgument : "script" "check_jump"
/// @DnDSaveInfo : "script" "check_jump"
script_execute(check_jump);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 0554AADC
/// @DnDArgument : "script" "collision"
/// @DnDSaveInfo : "script" "collision"
script_execute(collision);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 7C3622D4
/// @DnDArgument : "script" "calc_movement"
/// @DnDSaveInfo : "script" "calc_movement"
script_execute(calc_movement);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 712F1DE7
/// @DnDArgument : "script" "animation"
/// @DnDSaveInfo : "script" "animation"
script_execute(animation);