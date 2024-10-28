/// @DnDAction : YoYo Games.Data Structures.Create_List
/// @DnDVersion : 1
/// @DnDHash : 6ADBF5B9
/// @DnDArgument : "var" "global.checkpoints_active"
global.checkpoints_active = ds_list_create();

/// @DnDAction : YoYo Games.Data Structures.List_Add
/// @DnDVersion : 1
/// @DnDHash : 0CBA8E2D
/// @DnDArgument : "var" "global.checkpoints_active"
ds_list_add(global.checkpoints_active, 0);

/// @DnDAction : YoYo Games.Data Structures.Create_List
/// @DnDVersion : 1
/// @DnDHash : 2E8F89B4
/// @DnDArgument : "var" "global.moves"
global.moves = ds_list_create();

/// @DnDAction : YoYo Games.Data Structures.List_Add
/// @DnDVersion : 1
/// @DnDHash : 443CA483
/// @DnDInput : 6
/// @DnDArgument : "var" "global.moves"
/// @DnDArgument : "value" ""jump""
/// @DnDArgument : "value_1" ""wallJump""
/// @DnDArgument : "value_2" ""airJump""
/// @DnDArgument : "value_3" ""run""
/// @DnDArgument : "value_4" ""shoot""
/// @DnDArgument : "value_5" ""block""
ds_list_add(global.moves, "jump", "wallJump", "airJump", "run", "shoot", "block");