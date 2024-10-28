/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 25A51BA7
/// @DnDArgument : "var" "global.paused"
/// @DnDArgument : "value" "true"
if(global.paused == true)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 0F6E4097
	/// @DnDParent : 25A51BA7
	/// @DnDArgument : "sprite" "spr_pause"
	/// @DnDSaveInfo : "sprite" "spr_pause"
	draw_sprite(spr_pause, 0, 0, 0);
}