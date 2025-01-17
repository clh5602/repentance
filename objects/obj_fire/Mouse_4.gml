/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7FFDE23A
/// @DnDArgument : "var" "global.paused"
/// @DnDArgument : "value" "true"
if(global.paused == true)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 57706470
	/// @DnDParent : 7FFDE23A
	/// @DnDArgument : "speed" "0"
	image_speed = 0;

	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 53378558
	/// @DnDParent : 7FFDE23A
	exit;
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 30D7CFFB
/// @DnDArgument : "code" "d = point_distance(mouse_x, mouse_y, self.x + (self.sprite_width/2), self.y + (self.sprite_height)/2) "
d = point_distance(mouse_x, mouse_y, self.x + (self.sprite_width/2), self.y + (self.sprite_height)/2)

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 22576C36
/// @DnDArgument : "var" "d"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "sprite_width/2"
if(d < sprite_width/2)
{
	/// @DnDAction : YoYo Games.Data Structures.List_Remove
	/// @DnDVersion : 1
	/// @DnDHash : 0F6FCFC9
	/// @DnDParent : 22576C36
	/// @DnDArgument : "var" "global.moves"
	/// @DnDArgument : "index" "ds_list_find_index(global.moves, name)"
	if(ds_list_size(global.moves) > ds_list_find_index(global.moves, name))
		ds_list_delete(global.moves, ds_list_find_index(global.moves, name));

	/// @DnDAction : YoYo Games.Data Structures.List_Add
	/// @DnDVersion : 1
	/// @DnDHash : 427401F8
	/// @DnDParent : 22576C36
	/// @DnDArgument : "var" "global.checkpoints_active"
	/// @DnDArgument : "value" "obj_devilSale.key"
	ds_list_add(global.checkpoints_active, obj_devilSale.key);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 203C86B0
	/// @DnDParent : 22576C36
	instance_destroy();
}