// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function mission()constructor
{
	enum STATUS
	{
		IDLE,
		ACCEPTED,
		DECLINED,
		ACTIVE,
		COMPLETE,
		FAILED
	}
	
	enum TYPE
	{
		TUTORIAL,
		ESCORT,
		KILL,
		FETCH,
		EVENT
	}
	
	enum REWARD
	{
		BLUEPRINT,
		RESOURCE,
		CURRENCY
	}
	#region member variables
	
	intro = "Test Mission Text Testing MISSION TEXT";
	title = "Mission Title";
	tag_line = "Mission Tagline";
	description = "Short Mission Description \n Lorem Ipsum Dolem ROLLEM Lorem Ipsum Dolem ROLLEM  \n Lorem Ipsum Dolem ROLLEM Lorem Ipsum Dolem ROLLEM \n Lorem Ipsum Dolem ROLLEM Lorem Ipsum Dolem ROLLEM ";
	status = STATUS.IDLE;
	type = -1;
	reward = -1;
	escort_target = noone;
	kill_target = noone;
	fetch_amount = 0;
	fetch_targets = [];
	mission_accepted = false;
	
	#endregion
	static display_mission = function()
	{
		if(!self.mission_accepted)
		{
			
			create_text_box(self.intro,0);
			create_text_box(self.title,0);
			create_text_box(self.description,0);
			//remove from here after we add in choice functionality
		
			self.accept_mission();
		}
		
	};
	static accept_mission = function()
	{
		//set mission status as active
		//activate the appropriate object...place mission objects on their own layer
		//display the tracker
		self.mission_accepted = true;
		self.status = STATUS.ACCEPTED;
		
	};
	static decline_mission = function()
	{
		//close dialogue
		//queue mission for later
		self.status = STATUS.DECLINED;
	};
	static reward_player = function()
	{
	
	};
	static punish_player = function()
	{
	
	};
	static complete_mission = function()
	{
		self.reward_player();
	};
	static fail_mission = function()
	{
		self.punish_player();
	};

}