/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1263F5AA
/// @DnDArgument : "var" "trans"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "op" "3"
if(!(trans <= 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 55142367
	/// @DnDParent : 1263F5AA
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "trans"
	trans += -1;

	/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
	/// @DnDVersion : 1
	/// @DnDHash : 0339D48B
	/// @DnDParent : 1263F5AA
	/// @DnDArgument : "sound" "snd_everywhere"
	/// @DnDArgument : "volume" "trans/100"
	/// @DnDSaveInfo : "sound" "snd_everywhere"
	audio_sound_gain(snd_everywhere, trans/100, 0);
}