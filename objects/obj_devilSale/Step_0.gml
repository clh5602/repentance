/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7CE541F5
/// @DnDArgument : "var" "ds_list_find_index(global.checkpoints_active, key)"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "-1"
if(!(ds_list_find_index(global.checkpoints_active, key) == -1))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7978119B
	/// @DnDParent : 7CE541F5
	/// @DnDArgument : "var" "global.devilProgress"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "17"
	if(global.devilProgress < 17)
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 4F7FDA9B
		/// @DnDApplyTo : {obj_airJumpButton}
		/// @DnDParent : 7978119B
		with(obj_airJumpButton) instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 1DB377C1
		/// @DnDApplyTo : {obj_block}
		/// @DnDParent : 7978119B
		with(obj_block) instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 6848738A
		/// @DnDApplyTo : {obj_fire}
		/// @DnDParent : 7978119B
		with(obj_fire) instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 70A2A4DF
		/// @DnDApplyTo : {obj_jumpButton}
		/// @DnDParent : 7978119B
		with(obj_jumpButton) instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 41282972
		/// @DnDApplyTo : {obj_life}
		/// @DnDParent : 7978119B
		with(obj_life) instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 3D8BB6F6
		/// @DnDApplyTo : {obj_run}
		/// @DnDParent : 7978119B
		with(obj_run) instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 79E9F9B2
		/// @DnDApplyTo : {obj_wallJump}
		/// @DnDParent : 7978119B
		with(obj_wallJump) instance_destroy();
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3C82D2F1
		/// @DnDParent : 7978119B
		/// @DnDArgument : "expr" "18"
		/// @DnDArgument : "var" "global.devilProgress"
		global.devilProgress = 18;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 20BC018D
/// @DnDArgument : "var" "ds_list_find_index(global.checkpoints_active, key)"
/// @DnDArgument : "value" "-1"
if(ds_list_find_index(global.checkpoints_active, key) == -1)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 148D7C3A
	/// @DnDParent : 20BC018D
	/// @DnDArgument : "var" "buttons_made"
	/// @DnDArgument : "value" "false"
	if(buttons_made == false)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 598AB525
		/// @DnDParent : 148D7C3A
		/// @DnDArgument : "var" "global.devilProgress"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "14"
		if(global.devilProgress > 14)
		{
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 1C46E2CC
			/// @DnDParent : 598AB525
			/// @DnDArgument : "var" "buttons_made"
			/// @DnDArgument : "script" "create_buttons"
			/// @DnDSaveInfo : "script" "create_buttons"
			buttons_made = script_execute(create_buttons);
		}
	}
}