/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 29EB67C1
/// @DnDArgument : "var" "ds_list_find_index(global.checkpoints_active, key)"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "-1"
if(!(ds_list_find_index(global.checkpoints_active, key) == -1))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2A0114E1
	/// @DnDParent : 29EB67C1
	/// @DnDArgument : "expr" "spr_active"
	/// @DnDArgument : "var" "sprite_index"
	sprite_index = spr_active;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 258FD22E
/// @DnDArgument : "var" "spawn_wait"
/// @DnDArgument : "value" "1"
if(spawn_wait == 1)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 364A2109
	/// @DnDParent : 258FD22E
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_player"
	/// @DnDArgument : "layer" ""Player""
	/// @DnDSaveInfo : "objectid" "obj_player"
	instance_create_layer(x + 0, y + 0, "Player", obj_player);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1FC27E0F
	/// @DnDParent : 258FD22E
	/// @DnDArgument : "var" "spawn_wait"
	spawn_wait = 0;
}