/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3ED1B075
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "spr_soulDropDissipate"
if(!(sprite_index == spr_soulDropDissipate))
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 64472BA3
	/// @DnDParent : 3ED1B075
	/// @DnDArgument : "soundid" "snd_collect"
	/// @DnDSaveInfo : "soundid" "snd_collect"
	audio_play_sound(snd_collect, 0, 0);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5CD5B5D3
	/// @DnDInput : 3
	/// @DnDParent : 3ED1B075
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "expr_1" "spr_soulDropDissipate"
	/// @DnDArgument : "var" "global.soulDrops"
	/// @DnDArgument : "var_1" "sprite_index"
	/// @DnDArgument : "var_2" "image_index"
	global.soulDrops += 1;
	sprite_index = spr_soulDropDissipate;
	image_index = 0;
}