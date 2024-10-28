/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2590DEA9
/// @DnDArgument : "var" "global.soulDrops"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "9"
if(global.soulDrops > 9)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 26C9FBF7
	/// @DnDParent : 2590DEA9
	/// @DnDArgument : "var" "global.playerHP"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "global.playerMaxHP"
	if(global.playerHP < global.playerMaxHP)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3C4BB326
		/// @DnDInput : 2
		/// @DnDParent : 26C9FBF7
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "global.playerHP"
		/// @DnDArgument : "var_1" "global.soulDrops"
		global.playerHP += 1;
		global.soulDrops = 0;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0BB1D21F
/// @DnDArgument : "var" "global.playerHP"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "global.playerMaxHP"
if(global.playerHP > global.playerMaxHP)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 641D04C2
	/// @DnDParent : 0BB1D21F
	/// @DnDArgument : "expr" "global.playerMaxHP"
	/// @DnDArgument : "var" "global.playerHP"
	global.playerHP = global.playerMaxHP;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 06164B99
/// @DnDArgument : "var" "global.playerHP"
/// @DnDArgument : "op" "1"
if(global.playerHP < 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 739EAA86
	/// @DnDParent : 06164B99
	/// @DnDArgument : "var" "global.playerHP"
	global.playerHP = 0;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5C563887
/// @DnDArgument : "var" "global.playerMaxHP"
/// @DnDArgument : "value" "3"
if(global.playerMaxHP == 3)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 2B74B84D
	/// @DnDParent : 5C563887
	/// @DnDArgument : "x" "9"
	/// @DnDArgument : "y" "9"
	/// @DnDArgument : "sprite" "spr_hpHud3"
	/// @DnDArgument : "image" "global.playerHP"
	/// @DnDSaveInfo : "sprite" "spr_hpHud3"
	draw_sprite(spr_hpHud3, global.playerHP, 9, 9);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 1093C7CF
else
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 29589906
	/// @DnDParent : 1093C7CF
	/// @DnDArgument : "x" "9"
	/// @DnDArgument : "y" "9"
	/// @DnDArgument : "sprite" "spr_hpHud2"
	/// @DnDArgument : "image" "global.playerHP"
	/// @DnDSaveInfo : "sprite" "spr_hpHud2"
	draw_sprite(spr_hpHud2, global.playerHP, 9, 9);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4FABF2BC
/// @DnDArgument : "var" "global.soulDrops"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "10"
if(global.soulDrops > 10)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2DD452D5
	/// @DnDParent : 4FABF2BC
	/// @DnDArgument : "expr" "10"
	/// @DnDArgument : "var" "global.soulDrops"
	global.soulDrops = 10;
}

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 136F2CFF
/// @DnDArgument : "x" "7"
/// @DnDArgument : "y" "45"
/// @DnDArgument : "sprite" "spr_soulMeter"
/// @DnDArgument : "image" "global.soulDrops"
/// @DnDSaveInfo : "sprite" "spr_soulMeter"
draw_sprite(spr_soulMeter, global.soulDrops, 7, 45);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 00BA6FC5
/// @DnDArgument : "var" "next_room"
/// @DnDArgument : "value" "true"
if(next_room == true)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2ACD90D2
	/// @DnDParent : 00BA6FC5
	/// @DnDArgument : "var" "room_trans_x"
	/// @DnDArgument : "op" "4"
	if(room_trans_x >= 0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 62F775B2
		/// @DnDParent : 2ACD90D2
		/// @DnDArgument : "var" "global.gameOver"
		/// @DnDArgument : "value" "true"
		if(global.gameOver == true)
		{
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 4B53577E
			/// @DnDParent : 62F775B2
			/// @DnDArgument : "script" "game_over_room_change"
			/// @DnDSaveInfo : "script" "game_over_room_change"
			script_execute(game_over_room_change);
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 572057A0
		/// @DnDParent : 2ACD90D2
		else
		{
			/// @DnDAction : YoYo Games.Rooms.Next_Room
			/// @DnDVersion : 1
			/// @DnDHash : 5FEE4D81
			/// @DnDParent : 572057A0
			room_goto_next();
		}
	}

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 5AFA175F
	/// @DnDParent : 00BA6FC5
	/// @DnDArgument : "x" "room_trans_x"
	/// @DnDArgument : "sprite" "spr_black"
	/// @DnDSaveInfo : "sprite" "spr_black"
	draw_sprite(spr_black, 0, room_trans_x, 0);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 32ACC843
	/// @DnDParent : 00BA6FC5
	/// @DnDArgument : "expr" "9"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "room_trans_x"
	room_trans_x += 9;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 66241EB6
/// @DnDArgument : "var" "room_intro"
/// @DnDArgument : "value" "false"
if(room_intro == false)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3E51A3C8
	/// @DnDParent : 66241EB6
	/// @DnDArgument : "var" "room_trans_x2"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "423"
	if(room_trans_x2 >= 423)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 57B6A28A
		/// @DnDParent : 3E51A3C8
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "room_intro"
		room_intro = true;
	}

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 658DC820
	/// @DnDParent : 66241EB6
	/// @DnDArgument : "x" "room_trans_x2"
	/// @DnDArgument : "sprite" "spr_black"
	/// @DnDSaveInfo : "sprite" "spr_black"
	draw_sprite(spr_black, 0, room_trans_x2, 0);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1ACC2980
	/// @DnDParent : 66241EB6
	/// @DnDArgument : "expr" "9"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "room_trans_x2"
	room_trans_x2 += 9;
}