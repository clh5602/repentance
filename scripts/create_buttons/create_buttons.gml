/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 6C74FF02
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "create_buttons"
function create_buttons() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4439AB50
	/// @DnDParent : 6C74FF02
	/// @DnDArgument : "var" "ds_list_find_index(global.moves, "jump")"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "-1"
	if(!(ds_list_find_index(global.moves, "jump") == -1))
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 2F1EC86B
		/// @DnDParent : 4439AB50
		/// @DnDArgument : "xpos" "189"
		/// @DnDArgument : "ypos" "99"
		/// @DnDArgument : "objectid" "obj_jumpButton"
		/// @DnDSaveInfo : "objectid" "obj_jumpButton"
		instance_create_layer(189, 99, "Instances", obj_jumpButton);
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3874AD80
	/// @DnDParent : 6C74FF02
	/// @DnDArgument : "var" "ds_list_find_index(global.moves, "airJump")"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "-1"
	if(!(ds_list_find_index(global.moves, "airJump") == -1))
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 1ABD5B72
		/// @DnDParent : 3874AD80
		/// @DnDArgument : "xpos" "216"
		/// @DnDArgument : "ypos" "99"
		/// @DnDArgument : "objectid" "obj_airJumpButton"
		/// @DnDSaveInfo : "objectid" "obj_airJumpButton"
		instance_create_layer(216, 99, "Instances", obj_airJumpButton);
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1555CC00
	/// @DnDParent : 6C74FF02
	/// @DnDArgument : "var" "ds_list_find_index(global.moves, "wallJump")"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "-1"
	if(!(ds_list_find_index(global.moves, "wallJump") == -1))
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 0E78F3F8
		/// @DnDParent : 1555CC00
		/// @DnDArgument : "xpos" "243"
		/// @DnDArgument : "ypos" "99"
		/// @DnDArgument : "objectid" "obj_wallJump"
		/// @DnDSaveInfo : "objectid" "obj_wallJump"
		instance_create_layer(243, 99, "Instances", obj_wallJump);
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5891BED4
	/// @DnDParent : 6C74FF02
	/// @DnDArgument : "var" "ds_list_find_index(global.moves, "run")"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "-1"
	if(!(ds_list_find_index(global.moves, "run") == -1))
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 66C040E6
		/// @DnDParent : 5891BED4
		/// @DnDArgument : "xpos" "270"
		/// @DnDArgument : "ypos" "99"
		/// @DnDArgument : "objectid" "obj_run"
		/// @DnDSaveInfo : "objectid" "obj_run"
		instance_create_layer(270, 99, "Instances", obj_run);
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 228DDC89
	/// @DnDParent : 6C74FF02
	/// @DnDArgument : "var" "ds_list_find_index(global.moves, "shoot")"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "-1"
	if(!(ds_list_find_index(global.moves, "shoot") == -1))
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 7E936B0A
		/// @DnDParent : 228DDC89
		/// @DnDArgument : "xpos" "207"
		/// @DnDArgument : "ypos" "126"
		/// @DnDArgument : "objectid" "obj_fire"
		/// @DnDSaveInfo : "objectid" "obj_fire"
		instance_create_layer(207, 126, "Instances", obj_fire);
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1298617E
	/// @DnDParent : 6C74FF02
	/// @DnDArgument : "var" "ds_list_find_index(global.moves, "block")"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "-1"
	if(!(ds_list_find_index(global.moves, "block") == -1))
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 436C6760
		/// @DnDParent : 1298617E
		/// @DnDArgument : "xpos" "234"
		/// @DnDArgument : "ypos" "126"
		/// @DnDArgument : "objectid" "obj_block"
		/// @DnDSaveInfo : "objectid" "obj_block"
		instance_create_layer(234, 126, "Instances", obj_block);
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1B02BCBD
	/// @DnDParent : 6C74FF02
	/// @DnDArgument : "var" "global.playerMaxHP"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "2"
	if(global.playerMaxHP > 2)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 4A4FB19D
		/// @DnDParent : 1B02BCBD
		/// @DnDArgument : "xpos" "261"
		/// @DnDArgument : "ypos" "126"
		/// @DnDArgument : "objectid" "obj_life"
		/// @DnDSaveInfo : "objectid" "obj_life"
		instance_create_layer(261, 126, "Instances", obj_life);
	}

	/// @DnDAction : YoYo Games.Common.Return
	/// @DnDVersion : 1
	/// @DnDHash : 340F0C40
	/// @DnDParent : 6C74FF02
	/// @DnDArgument : "value" "true"
	return true;
}