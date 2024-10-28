/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4CF25346
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "value" "spr_disappear"
if(sprite_index == spr_disappear)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1DCD7253
	/// @DnDParent : 4CF25346
	instance_destroy();
}