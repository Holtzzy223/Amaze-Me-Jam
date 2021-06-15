// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function mission()constructor
{
	enum STATUS
	{
		IDLE,
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
	_complete_text = "Mission Complete";
	_fail_text = "Mission Failed";
	_status = STATUS.IDLE;
	_type = -1;
	_reward = -1;
	_escort_target = noone;
	_kill_target = noone;
	_kill_amount = 0;
	_fetch_amount = 0;
	_fetch_targets = [];
	_mission_accepted = false;
	
	#endregion
	static display_mission = function()
	{
			create_text_box(self._intro,0);
			create_text_box(self._title,0);
			create_text_box(self._description,0);
	};
	static accept_mission = function()
	{
		//set mission status as active
		//activate the appropriate object...place mission objects on their own layer
		//display the tracker
		if(!_mission_accepted)
		{
			self._mission_accepted = true;
			self._status = STATUS.ACTIVE;
			self.display_mission();
		}
	};
	static decline_mission = function()
	{
		//close dialogue
		//queue mission for later
		self._status = STATUS.DECLINED;
	};
	static reward_player = function()
	{
		//give reward
		//save
		save_game(SAVEFILE);
	};
	static punish_player = function()
	{
	
	};
	static complete_mission = function()
	{
		self._status = STATUS.COMPLETE
		create_text_box(self._complete_text,0);
		self.reward_player();
	};
	static fail_mission = function()
	{
		self._status = STATUS.FAILED;
		self.punish_player();
	};
	

}

function mission_track_escort()
{
	
}

function mission_track_fetch()
{

}