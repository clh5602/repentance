/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 13C6DBF9
/// @DnDArgument : "var" "global.paused"
/// @DnDArgument : "value" "true"
if(global.paused == true)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 36A7FCA3
	/// @DnDParent : 13C6DBF9
	/// @DnDArgument : "speed" "0"
	image_speed = 0;

	/// @DnDAction : YoYo Games.Paths.Path_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 73453B22
	/// @DnDParent : 13C6DBF9
	/// @DnDArgument : "speed" "0"
	path_speed = 0;

	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 58BBEB84
	/// @DnDParent : 13C6DBF9
	exit;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 7F060FD5
else
{
	/// @DnDAction : YoYo Games.Paths.Path_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 05578E48
	/// @DnDParent : 7F060FD5
	/// @DnDArgument : "speed" "60"
	path_speed = 60;

	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 4E80AA97
	/// @DnDParent : 7F060FD5
	image_speed = 1;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 57ED3AA3
/// @DnDArgument : "var" "type"
/// @DnDArgument : "value" "true"
if(type == true)
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 3B7F0D4F
	/// @DnDParent : 57ED3AA3
	/// @DnDArgument : "obj" "obj_player"
	/// @DnDSaveInfo : "obj" "obj_player"
	var l3B7F0D4F_0 = false;
	l3B7F0D4F_0 = instance_exists(obj_player);
	if(l3B7F0D4F_0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 35CFC6F3
		/// @DnDParent : 3B7F0D4F
		/// @DnDArgument : "var" "distance_to_object(obj_player)"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "400"
		if(distance_to_object(obj_player) > 400)
		{
			/// @DnDAction : YoYo Games.Movement.Jump_To_Start
			/// @DnDVersion : 1
			/// @DnDHash : 6AFECEF3
			/// @DnDParent : 35CFC6F3
			x = xstart;
			y = ystart;
		
			/// @DnDAction : YoYo Games.Paths.Stop_Path
			/// @DnDVersion : 1
			/// @DnDHash : 46491C93
			/// @DnDParent : 35CFC6F3
			path_end();
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1BD1CC27
		/// @DnDParent : 3B7F0D4F
		/// @DnDArgument : "var" "distance_to_point(obj_player.x, obj_player.y)"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "30"
		if(distance_to_point(obj_player.x, obj_player.y) < 30)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5B4B016D
			/// @DnDParent : 1BD1CC27
			/// @DnDArgument : "var" "path_index"
			/// @DnDArgument : "value" "-1"
			if(path_index == -1)
			{
				/// @DnDAction : YoYo Games.Paths.Start_Path
				/// @DnDVersion : 1.1
				/// @DnDHash : 3DF5990C
				/// @DnDParent : 5B4B016D
				/// @DnDArgument : "path" "path1"
				/// @DnDArgument : "speed" "60"
				/// @DnDArgument : "atend" "path_action_continue"
				/// @DnDArgument : "relative" "true"
				path_start(path1, 60, path_action_continue, true);
			}
		}
	}
}

/// @DnDAction : YoYo Games.Data Structures.List_Add
/// @DnDVersion : 1
/// @DnDHash : 17A483C6
/// @DnDArgument : "var" "xpositions"
/// @DnDArgument : "value" "x"
ds_list_add(xpositions, x);

/// @DnDAction : YoYo Games.Data Structures.List_Remove
/// @DnDVersion : 1
/// @DnDHash : 39A44453
/// @DnDArgument : "var" "xpositions"
if(ds_list_size(xpositions) > 0)
	ds_list_delete(xpositions, 0);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 47D08D97
/// @DnDInput : 2
/// @DnDArgument : "expr" "ds_list_find_value(xpositions, 0)-ds_list_find_value(xpositions, 1)"
/// @DnDArgument : "expr_1" "hsp*-1"
/// @DnDArgument : "var" "hsp"
/// @DnDArgument : "var_1" "hsp"
hsp = ds_list_find_value(xpositions, 0)-ds_list_find_value(xpositions, 1);
hsp = hsp*-1;