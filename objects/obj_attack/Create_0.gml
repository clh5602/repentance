/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 083CA9E7
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "obj_player"
var l083CA9E7_0 = false;
l083CA9E7_0 = instance_exists(obj_player);
if(l083CA9E7_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 17755426
	/// @DnDParent : 083CA9E7
	/// @DnDArgument : "expr" "obj_player.facing"
	/// @DnDArgument : "var" "facing"
	facing = obj_player.facing;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 59863446
	/// @DnDParent : 083CA9E7
	/// @DnDArgument : "var" "obj_player.hug_wall_count"
	/// @DnDArgument : "op" "2"
	if(obj_player.hug_wall_count > 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 50C4FAB0
		/// @DnDParent : 59863446
		/// @DnDArgument : "expr" "facing*-1"
		/// @DnDArgument : "var" "facing"
		facing = facing*-1;
	}
}