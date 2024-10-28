/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3293A6DA
/// @DnDArgument : "var" "global.paused"
/// @DnDArgument : "value" "true"
if(global.paused == true)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 749ABA26
	/// @DnDParent : 3293A6DA
	/// @DnDArgument : "speed" "0"
	image_speed = 0;

	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 1D7D9131
	/// @DnDParent : 3293A6DA
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
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 398B60EB
	/// @DnDParent : 22576C36
	/// @DnDArgument : "expr" "2"
	/// @DnDArgument : "var" "global.playerMaxHP"
	global.playerMaxHP = 2;

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