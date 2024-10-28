/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 79D7FA27
/// @DnDArgument : "var" "global.paused"
/// @DnDArgument : "value" "true"
if(global.paused == true)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 2CC15D3C
	/// @DnDParent : 79D7FA27
	/// @DnDArgument : "speed" "0"
	image_speed = 0;

	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 39AD0D0D
	/// @DnDParent : 79D7FA27
	exit;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 1C7400B9
else
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 0CEF014F
	/// @DnDParent : 1C7400B9
	image_speed = 1;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7A55D6BA
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "value" "spr_die"
if(sprite_index == spr_die)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 4A00BA3E
	/// @DnDParent : 7A55D6BA
	exit;
}

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 5B4B9E8A
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "obj_player"
var l5B4B9E8A_0 = false;
l5B4B9E8A_0 = instance_exists(obj_player);
if(l5B4B9E8A_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 20305E69
	/// @DnDParent : 5B4B9E8A
	/// @DnDArgument : "var" "obj_player.x"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "x"
	if(obj_player.x > x)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 074313A3
		/// @DnDParent : 20305E69
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "facing"
		facing = 1;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 5F999A31
	/// @DnDParent : 5B4B9E8A
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 00BEE493
		/// @DnDParent : 5F999A31
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "var" "facing"
		facing = -1;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 57D71AB7
	/// @DnDParent : 5B4B9E8A
	/// @DnDArgument : "var" "distance_to_object(obj_player)"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "500"
	if(distance_to_object(obj_player) > 500)
	{
		/// @DnDAction : YoYo Games.Common.Exit_Event
		/// @DnDVersion : 1
		/// @DnDHash : 48ED4F60
		/// @DnDParent : 57D71AB7
		exit;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3C99D3D5
/// @DnDArgument : "var" "pogo_goal"
if(pogo_goal == 0)
{
	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 436A4298
	/// @DnDParent : 3C99D3D5
	/// @DnDArgument : "var" "pogo_goal"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "min" "2"
	/// @DnDArgument : "max" "5"
	pogo_goal = floor(random_range(2, 5 + 1));

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4E8455D7
	/// @DnDInput : 3
	/// @DnDParent : 3C99D3D5
	/// @DnDArgument : "expr_1" "spr_idle"
	/// @DnDArgument : "var" "pogo_count"
	/// @DnDArgument : "var_1" "sprite_index"
	/// @DnDArgument : "var_2" "image_index"
	pogo_count = 0;
	sprite_index = spr_idle;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 386069DD
/// @DnDArgument : "var" "pogo_count"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "pogo_goal"
if(pogo_count >= pogo_goal)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 08EF6CAD
	/// @DnDParent : 386069DD
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "value" "spr_idle"
	if(sprite_index == spr_idle)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 38921824
		/// @DnDParent : 08EF6CAD
		/// @DnDArgument : "expr" "spr_ready"
		/// @DnDArgument : "var" "sprite_index"
		sprite_index = spr_ready;
	}
}

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 58670C96
/// @DnDArgument : "script" "check_ground_dMan"
/// @DnDSaveInfo : "script" "check_ground_dMan"
script_execute(check_ground_dMan);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 36E878A1
/// @DnDArgument : "var" "jump"
/// @DnDArgument : "value" "true"
if(jump == true)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5D0016D2
	/// @DnDParent : 36E878A1
	/// @DnDArgument : "expr" "-jump_spd"
	/// @DnDArgument : "var" "vsp"
	vsp = -jump_spd;
}

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 3EB56746
/// @DnDArgument : "script" "collision_general"
/// @DnDSaveInfo : "script" "collision_general"
script_execute(collision_general);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 085D0AD0
/// @DnDArgument : "script" "calc_movement"
/// @DnDSaveInfo : "script" "calc_movement"
script_execute(calc_movement);