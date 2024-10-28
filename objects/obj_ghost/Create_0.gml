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