/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 0176DE6F
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "enemy_deactivate"
function enemy_deactivate() 
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 79AA16EB
	/// @DnDParent : 0176DE6F
	/// @DnDArgument : "obj" "obj_player"
	/// @DnDSaveInfo : "obj" "obj_player"
	var l79AA16EB_0 = false;
	l79AA16EB_0 = instance_exists(obj_player);
	if(l79AA16EB_0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 73B62F56
		/// @DnDParent : 79AA16EB
		/// @DnDArgument : "var" "distance_to_object(obj_player)"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "500"
		if(distance_to_object(obj_player) > 500)
		{
			/// @DnDAction : YoYo Games.Common.Exit_Event
			/// @DnDVersion : 1
			/// @DnDHash : 53B76590
			/// @DnDParent : 73B62F56
			exit;
		}
	}
}