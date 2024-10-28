/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 5F2FBE73
draw_self();

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 4EF56922
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "obj_player"
var l4EF56922_0 = false;
l4EF56922_0 = instance_exists(obj_player);
if(l4EF56922_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 669211D7
	/// @DnDParent : 4EF56922
	/// @DnDArgument : "var" "distance_to_object(obj_player)"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "30"
	if(distance_to_object(obj_player) < 30)
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 308918AE
		/// @DnDParent : 669211D7
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "-40"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "sprite" "spr_jKey"
		/// @DnDSaveInfo : "sprite" "spr_jKey"
		draw_sprite(spr_jKey, 0, x + 0, y + -40);
	}
}

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 7684AFA5
/// @DnDArgument : "font" "regular"
/// @DnDSaveInfo : "font" "regular"
draw_set_font(regular);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 104370CC
/// @DnDArgument : "color" "$FF000000"
draw_set_colour($FF000000 & $ffffff);
var l104370CC_0=($FF000000 >> 24);
draw_set_alpha(l104370CC_0 / $ff);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 31A0E1C7
/// @DnDArgument : "code" "draw_text_ext(60, 9, ds_list_find_value(devil_speech, global.devilProgress), 17, 250);"
draw_text_ext(60, 9, ds_list_find_value(devil_speech, global.devilProgress), 17, 250);