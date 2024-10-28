/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 30499244
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "game_over_room_change"
function game_over_room_change() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 35561BF8
	/// @DnDParent : 30499244
	/// @DnDArgument : "var" "ds_list_find_value(global.checkpoints_active, ds_list_size(global.checkpoints_active)-1)"
	if(ds_list_find_value(global.checkpoints_active, ds_list_size(global.checkpoints_active)-1) == 0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5E11047A
		/// @DnDParent : 35561BF8
		/// @DnDArgument : "var" "room_get_name(room)"
		/// @DnDArgument : "value" ""testing""
		if(room_get_name(room) == "testing")
		{
			/// @DnDAction : YoYo Games.Rooms.Restart_Room
			/// @DnDVersion : 1
			/// @DnDHash : 31B61DFD
			/// @DnDParent : 5E11047A
			room_restart();
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 7AE4DC5A
		/// @DnDParent : 35561BF8
		else
		{
			/// @DnDAction : YoYo Games.Rooms.Go_To_Room
			/// @DnDVersion : 1
			/// @DnDHash : 6D50B53C
			/// @DnDParent : 7AE4DC5A
			/// @DnDArgument : "room" "testing"
			/// @DnDSaveInfo : "room" "testing"
			room_goto(testing);
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 3B4BC185
	/// @DnDParent : 30499244
	else
	{
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 394F5D58
		/// @DnDParent : 3B4BC185
		/// @DnDArgument : "room" "asset_get_index("devilRoom" + string(ds_list_find_value(global.checkpoints_active, ds_list_size(global.checkpoints_active)-1)))"
		room_goto(asset_get_index("devilRoom" + string(ds_list_find_value(global.checkpoints_active, ds_list_size(global.checkpoints_active)-1))));
	}
}