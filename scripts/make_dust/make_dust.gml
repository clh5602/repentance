/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 6E167317
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "make_dust"
/// @DnDArgument : "arg" "offset=0"
function make_dust(offset=0) 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 358308D3
	/// @DnDParent : 6E167317
	/// @DnDArgument : "var" "global.dustTimer"
	/// @DnDArgument : "op" "3"
	if(global.dustTimer <= 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1D9566CB
		/// @DnDParent : 358308D3
		/// @DnDArgument : "expr" "4"
		/// @DnDArgument : "var" "global.dustTimer"
		global.dustTimer = 4;
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 0E89100B
		/// @DnDParent : 358308D3
		/// @DnDArgument : "xpos" "offset"
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_dust"
		/// @DnDSaveInfo : "objectid" "obj_dust"
		instance_create_layer(x + offset, y + 0, "Instances", obj_dust);
	}
}