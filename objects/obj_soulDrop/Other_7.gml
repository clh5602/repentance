/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1B198FCB
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "value" "spr_soulDropDissipate"
if(sprite_index == spr_soulDropDissipate)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 76726DCC
	/// @DnDParent : 1B198FCB
	instance_destroy();
}