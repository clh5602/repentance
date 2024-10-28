/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7A516E78
/// @DnDArgument : "var" "global.paused"
/// @DnDArgument : "value" "false"
if(global.paused == false)
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 22D9CA67
	/// @DnDParent : 7A516E78
	/// @DnDArgument : "obj" "obj_player"
	/// @DnDSaveInfo : "obj" "obj_player"
	var l22D9CA67_0 = false;
	l22D9CA67_0 = instance_exists(obj_player);
	if(l22D9CA67_0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2670512A
		/// @DnDParent : 22D9CA67
		/// @DnDArgument : "var" "distance_to_object(obj_player)"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "30"
		if(distance_to_object(obj_player) < 30)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7D79AD1B
			/// @DnDParent : 2670512A
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "global.devilProgress"
			global.devilProgress += 1;
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 58ADBB20
			/// @DnDParent : 2670512A
			/// @DnDArgument : "var" "global.devilProgress"
			/// @DnDArgument : "op" "2"
			/// @DnDArgument : "value" "16"
			if(global.devilProgress > 16)
			{
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 1186EDC0
				/// @DnDParent : 58ADBB20
				/// @DnDArgument : "var" "ds_list_find_index(global.checkpoints_active, key)"
				/// @DnDArgument : "value" "-1"
				if(ds_list_find_index(global.checkpoints_active, key) == -1)
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 1685AF1F
					/// @DnDParent : 1186EDC0
					/// @DnDArgument : "expr" "13"
					/// @DnDArgument : "var" "global.devilProgress"
					global.devilProgress = 13;
				}
			}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0D5A41EC
			/// @DnDParent : 2670512A
			/// @DnDArgument : "var" "global.devilProgress"
			/// @DnDArgument : "op" "2"
			/// @DnDArgument : "value" "19"
			if(global.devilProgress > 19)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 3B2CDA4B
				/// @DnDParent : 0D5A41EC
				/// @DnDArgument : "expr" "17"
				/// @DnDArgument : "var" "global.devilProgress"
				global.devilProgress = 17;
			}
		}
	}
}