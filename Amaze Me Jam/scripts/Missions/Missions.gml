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
	
	_intro = "Test Mission Text Testing MISSION TEXT";
	_title = "Mission Title";
	_tag_line = "Mission Tagline";
	_description = "Short Mission Description \n Lorem Ipsum Dolem ROLLEM Lorem Ipsum Dolem ROLLEM  \n Lorem Ipsum Dolem ROLLEM Lorem Ipsum Dolem ROLLEM \n Lorem Ipsum Dolem ROLLEM Lorem Ipsum Dolem ROLLEM ";
	_status = STATUS.IDLE;
	_type = -1;
	_reward = -1;
	_escort_target = noone;
	_kill_target = noone;
	_fetch_amount = 0;
	_fetch_targets = [];
	_mission_accepted = false;
	
	#endregion
	static display_mission = function()
	{
		if(!self.mission_accepted)
		{
			
			create_text_box(self._intro,0);
			create_text_box(self._title,0);
			create_text_box(self._description,0);
			//remove from here after we add in choice functionality
		
			self.accept_mission();
		}
		
	};
	static accept_mission = function()
	{
		//set mission status as active
		//activate the appropriate object...place mission objects on their own layer
		//display the tracker
		self._mission_accepted = true;
		self._status = STATUS.ACCEPTED;
		
	};
	static decline_mission = function()
	{
		//close dialogue
		//queue mission for later
		self._status = STATUS.DECLINED;
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