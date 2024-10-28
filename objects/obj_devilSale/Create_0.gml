/// @DnDAction : YoYo Games.Data Structures.Create_List
/// @DnDVersion : 1
/// @DnDHash : 7F7472D9
/// @DnDArgument : "var" "devil_speech"
devil_speech = ds_list_create();

/// @DnDAction : YoYo Games.Data Structures.List_Add
/// @DnDVersion : 1
/// @DnDHash : 394E57AF
/// @DnDInput : 21
/// @DnDArgument : "var" "devil_speech"
/// @DnDArgument : "value" """"
/// @DnDArgument : "value_1" ""Hey hey, kiddo! Welcome to the underworld!""
/// @DnDArgument : "value_2" ""You must\'ve done some pretty bad things in your life to end up in the lowest level, huh?""
/// @DnDArgument : "value_3" ""Plenty of sinners like yourself come here everyday! And plenty of them attempt to escape!""
/// @DnDArgument : "value_4" ""I\'m guessing you\'re doing the same - well, what can I say? I admire your drive, kid!""
/// @DnDArgument : "value_5" ""I\'ll make you a deal - one that\'ll help you get out of here!""
/// @DnDArgument : "value_6" ""Let me explain - if your soul gets too \"roughed up\" during your time in Heck, you\'ll be dragged back down to where it all started - and we wouldn\'t want that!""
/// @DnDArgument : "value_7" ""Here\'s the deal, kid - I can create checkpoints for you! Whenever your soul dissipates, instead of being taken all the way back, you\'ll be dropped off at my nearest station!""
/// @DnDArgument : "value_8" ""Here\'s where you come in, kiddo - good things need SACRIFICE!""
/// @DnDArgument : "value_9" ""In order to activate these checkpoints for you, you\'ll need to give up one of your abilities - PERMANENTLY!""
/// @DnDArgument : "value_10" ""Kid, deals like these come once in an afterlife time! Talk to me if you want to make a deal!""
/// @DnDArgument : "value_11" ""Oh, by the way, just a tip from your old pal...""
/// @DnDArgument : "value_12" ""You\'ll be able to escape no matter what abilities you give up. However, secret areas may be out of reach. That\'s how the cookie crumbles!""
/// @DnDArgument : "value_13" """"
/// @DnDArgument : "value_14" ""So, you\'d like to activate a checkpoint?""
/// @DnDArgument : "value_15" ""No problemo! Click on whatever ability you want to sacrifice!""
/// @DnDArgument : "value_16" ""Or, if you don\'t want to activate the checkpoint, just keep walkin\'""
/// @DnDArgument : "value_17" """"
/// @DnDArgument : "value_18" ""This checkpoint has been activated! Pleasure doing business. And the deal\'s been sealed - we don\'t offer refunds!""
/// @DnDArgument : "value_19" ""Get a move on - if you think you can escape, that is...""
/// @DnDArgument : "value_20" """"
ds_list_add(devil_speech, "", "Hey hey, kiddo! Welcome to the underworld!", "You must\'ve done some pretty bad things in your life to end up in the lowest level, huh?", "Plenty of sinners like yourself come here everyday! And plenty of them attempt to escape!", "I\'m guessing you\'re doing the same - well, what can I say? I admire your drive, kid!", "I\'ll make you a deal - one that\'ll help you get out of here!", "Let me explain - if your soul gets too \"roughed up\" during your time in Heck, you\'ll be dragged back down to where it all started - and we wouldn\'t want that!", "Here\'s the deal, kid - I can create checkpoints for you! Whenever your soul dissipates, instead of being taken all the way back, you\'ll be dropped off at my nearest station!", "Here\'s where you come in, kiddo - good things need SACRIFICE!", "In order to activate these checkpoints for you, you\'ll need to give up one of your abilities - PERMANENTLY!", "Kid, deals like these come once in an afterlife time! Talk to me if you want to make a deal!", "Oh, by the way, just a tip from your old pal...", "You\'ll be able to escape no matter what abilities you give up. However, secret areas may be out of reach. That\'s how the cookie crumbles!", "", "So, you\'d like to activate a checkpoint?", "No problemo! Click on whatever ability you want to sacrifice!", "Or, if you don\'t want to activate the checkpoint, just keep walkin\'", "", "This checkpoint has been activated! Pleasure doing business. And the deal\'s been sealed - we don\'t offer refunds!", "Get a move on - if you think you can escape, that is...", "");

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 181D99DB
/// @DnDArgument : "var" "global.devilProgress"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "13"
if(global.devilProgress < 13)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 146F41E6
	/// @DnDParent : 181D99DB
	/// @DnDArgument : "var" "global.devilProgress"
	global.devilProgress = 0;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 75DAB615
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7C0E35C3
	/// @DnDParent : 75DAB615
	/// @DnDArgument : "var" "ds_list_find_value(global.checkpoints_active, key)"
	/// @DnDArgument : "value" "-1"
	if(ds_list_find_value(global.checkpoints_active, key) == -1)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 648011D1
		/// @DnDParent : 7C0E35C3
		/// @DnDArgument : "expr" "13"
		/// @DnDArgument : "var" "global.devilProgress"
		global.devilProgress = 13;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 11343342
	/// @DnDParent : 75DAB615
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 448D74BD
		/// @DnDParent : 11343342
		/// @DnDArgument : "expr" "17"
		/// @DnDArgument : "var" "global.devilProgress"
		global.devilProgress = 17;
	}
}