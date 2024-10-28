/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 686D306D
/// @DnDArgument : "var" "sprite_drawn"
/// @DnDArgument : "value" "false"
var sprite_drawn = false;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2A2D0B3E
/// @DnDArgument : "var" "second_jump"
/// @DnDArgument : "value" "true"
if(second_jump == true)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 4CB50F28
	/// @DnDParent : 2A2D0B3E
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "xscale" "facing"
	/// @DnDArgument : "alpha" "trans"
	/// @DnDArgument : "sprite" "sprite_index"
	/// @DnDArgument : "frame" "image_index"
	/// @DnDArgument : "col" "$FFCCCCCC"
	draw_sprite_ext(sprite_index, image_index, x + 0, y + 0, facing, 1, 0, $FFCCCCCC & $ffffff, trans);

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 67C8EDDD
	/// @DnDParent : 2A2D0B3E
	/// @DnDArgument : "var" "sprite_drawn"
	/// @DnDArgument : "value" "true"
	var sprite_drawn = true;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3993E9BD
/// @DnDArgument : "var" "blocking"
/// @DnDArgument : "value" "true"
if(blocking == true)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 0D33A266
	/// @DnDParent : 3993E9BD
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "xscale" "facing"
	/// @DnDArgument : "alpha" "trans"
	/// @DnDArgument : "sprite" "sprite_index"
	/// @DnDArgument : "frame" "image_index"
	/// @DnDArgument : "col" "$FFCCCCCC"
	draw_sprite_ext(sprite_index, image_index, x + 0, y + 0, facing, 1, 0, $FFCCCCCC & $ffffff, trans);

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 405069F3
	/// @DnDParent : 3993E9BD
	/// @DnDArgument : "var" "sprite_drawn"
	/// @DnDArgument : "value" "true"
	var sprite_drawn = true;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6D853F31
/// @DnDArgument : "var" "sprite_drawn"
/// @DnDArgument : "value" "false"
if(sprite_drawn == false)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 6FF02D5A
	/// @DnDParent : 6D853F31
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "xscale" "facing"
	/// @DnDArgument : "alpha" "trans"
	/// @DnDArgument : "sprite" "sprite_index"
	/// @DnDArgument : "frame" "image_index"
	draw_sprite_ext(sprite_index, image_index, x + 0, y + 0, facing, 1, 0, $FFFFFF & $ffffff, trans);
}