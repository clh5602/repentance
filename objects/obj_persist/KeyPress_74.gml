/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6DFF6BE7
/// @DnDArgument : "var" "room_get_name(room)"
/// @DnDArgument : "value" ""title""
if(room_get_name(room) == "title")
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 6EF0CE33
	/// @DnDParent : 6DFF6BE7
	/// @DnDArgument : "soundid" "snd_everywhere"
	/// @DnDArgument : "loop" "1"
	/// @DnDSaveInfo : "soundid" "snd_everywhere"
	audio_play_sound(snd_everywhere, 0, 1);

	/// @DnDAction : YoYo Games.Rooms.Next_Room
	/// @DnDVersion : 1
	/// @DnDHash : 443C08AD
	/// @DnDParent : 6DFF6BE7
	room_goto_next();
}