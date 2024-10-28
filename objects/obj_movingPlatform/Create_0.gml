/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 520C2563
/// @DnDArgument : "var" "type"
/// @DnDArgument : "value" "true"
if(type == true)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7A2884DA
	/// @DnDParent : 520C2563
	/// @DnDArgument : "expr" "spr_waitingPlatform"
	/// @DnDArgument : "var" "sprite_index"
	sprite_index = spr_waitingPlatform;
}

/// @DnDAction : YoYo Games.Data Structures.Create_List
/// @DnDVersion : 1
/// @DnDHash : 2D04BE23
/// @DnDArgument : "var" "xpositions"
xpositions = ds_list_create();

/// @DnDAction : YoYo Games.Data Structures.List_Add
/// @DnDVersion : 1
/// @DnDHash : 0EF92055
/// @DnDInput : 2
/// @DnDArgument : "var" "xpositions"
/// @DnDArgument : "value" "x"
/// @DnDArgument : "value_1" "x"
ds_list_add(xpositions, x, x);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 121BE0CF
/// @DnDInput : 2
/// @DnDArgument : "expr" "x"
/// @DnDArgument : "expr_1" "y"
/// @DnDArgument : "var" "x1"
/// @DnDArgument : "var_1" "y1"
x1 = x;
y1 = y;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7B84D4D0
/// @DnDArgument : "expr" "path_add()"
/// @DnDArgument : "var" "path1"
path1 = path_add();

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1FD6E0E0
/// @DnDArgument : "code" "path_add_point(path1, x1, y1, 1)$(13_10)path_add_point(path1, x2, y2, 1)$(13_10)"
path_add_point(path1, x1, y1, 1)
path_add_point(path1, x2, y2, 1)

/// @DnDAction : YoYo Games.Paths.Start_Path
/// @DnDVersion : 1.1
/// @DnDHash : 7944DDDD
/// @DnDArgument : "path" "path1"
/// @DnDArgument : "speed" "60"
/// @DnDArgument : "atend" "path_action_continue"
/// @DnDArgument : "relative" "true"
path_start(path1, 60, path_action_continue, true);