
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
		SHIP,
		UPGRADE,
		WEAPON,
		ORE
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
	_reward_text = "";
	_ore_reward  = 0;
	_ship_reward = noone;
	_weapon_reward = noone;
	_upgrade_reward = noone;
	_escort_target = noone;
	_target_name = "";
	_kill_target = noone;
	_kill_amount = 0;
	_fetch_amount = 0;
	_targets_fetched = 0;
	_fetch_targets = [];
	_mission_accepted = false;
	_target_sprite = noone;
	#endregion
	static display_mission = function()
	{
			create_text_box(self._intro,0);
			create_text_box(self._description,0);
		
	};
	static accept_mission = function()
	{
		//set mission status as active
		//activate the appropriate object...place mission objects on their own layer
		//display the tracker
		if(!_mission_accepted)
		{
			switch(self._type)
			{
				case TYPE.ESCORT:
					spawn_object_at_camera_bounds(_escort_target,_fetch_amount,"Instances_controllers",13000);
				break;
			}
			
			self._mission_accepted = true;
			self._status = STATUS.ACTIVE;
			obj_player.current_mission = self;
			save_game(SAVEFILE);
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
		self._status = STATUS.IDLE;
		//give reward
		switch(_reward)
		{
			case REWARD.ORE:
				repeat(_ore_reward)
				{
					var child = instance_create_layer(obj_player.x+irandom_range(-64,64),obj_player.y-350+irandom_range(-15,15),"Instances",obj_ore);
					child.image_blend = choose(c_purple,c_fuchsia,c_yellow);
					global.camera_shake = 3;
				}
			break;
				
			case REWARD.SHIP:	break;
			case REWARD.WEAPON:	break;
			case REWARD.UPGRADE:	break;

		}
		//allways give ore
		repeat(10)
		{
			var child = instance_create_layer(obj_player.x+irandom_range(-32,32),obj_player.y-300+irandom_range(-15,15),"Instances",obj_ore);
			child.image_blend = choose(c_fuchsia,c_silver);
		}
		//heal player
		obj_player.hp = obj_player.max_hp;
		obj_player.energy = obj_player.max_energy;
		//end mission
		obj_player.current_mission = noone;
		
		//save
		save_game(SAVEFILE);
	};
	static punish_player = function()
	{
	
	};
	static complete_mission = function()
	{
		if(self._status!=STATUS.COMPLETE)
		{
			obj_player.speed = 0;
			self._status = STATUS.COMPLETE
			create_text_box(self._complete_text,1);
			self.reward_player();
		}
	};
	static fail_mission = function()
	{
		create_text_box(self._fail_text,2);
		self._status = STATUS.FAILED;
		self.punish_player();
	};
	

}


function mission_kill() : mission() constructor
{
	
	_type = TYPE.KILL;
	_reward = REWARD.ORE;
	_reward_text = "Reward: A Metric Butt Tonne of ORE"
	_ore_reward = 20;
	_kill_amount = irandom_range(2,6);
	_kill_target = choose(obj_pirate_raider,obj_pirate_brute,obj_hunter_seeker,obj_pirate_mobile_base,obj_pirate_station,obj_pirate_bee_cruiser);
	switch(_kill_target)
	{
		case obj_pirate_raider:
			_target_name = "Raider"
			_target_sprite = spr_raider; 
		break;
		case obj_pirate_brute:
			_target_name = "Brute"
			_target_sprite = spr_pirate_brute20;
		break;
		case obj_hunter_seeker:
			_target_name = "Hunter Seeker"
			_target_sprite = spr_hunter
		break;
		case obj_pirate_mobile_base:
			_target_name = "Mobile Base Unit"
			_target_sprite = spr_pirate_mobile_base;
		break;
		case obj_pirate_station:
			_target_name = "Pirate Station"
			_target_sprite = spr_pirate_station
		break;
			case obj_pirate_bee_cruiser:
			_target_name = "Bee Cruiser"
			_target_sprite = spr_Bee_Cruiser;
		break;
		
	}
	_intro = "A squadron of pirates has been\n plaguing this sector for two months \n please deal with these intelopers immediatley.."
	_title = "A Pirates Life";
	_tag_line = "dead men tell no tales...";
	_description = "Hunt down and DESTROY ("+string(self._kill_amount)+") \n " + string(self._target_name) + " Class pirate vessels.";
}

function mission_escort() : mission() constructor
{
	_type = TYPE.ESCORT;
	_reward = REWARD.ORE;
	_reward_text = "Reward: New Ship Unlock Progress and \n a moderate deposit of ore"
	_ore_reward = irandom_range(10,30);
	_escort_target = choose(obj_ally_dart,obj_ally_bomber,obj_ally_interceptor,obj_ally_hammerhead,obj_ally_medusa,);
	_fetch_amount = irandom_range(1,3);
	switch(_escort_target)
	{
		case obj_ally_dart:
			_target_name = "Republic Dart";
			_target_sprite = spr_player_ship_dart;
		break;
		case obj_ally_bomber:
			_target_name = "Consensus Bomber";
			_target_sprite = spr_ship_bomber;
		break;
		case obj_ally_interceptor:
			_target_name = " Terran Interceptor";
			_target_sprite = spr_darx_interceptor;
		break;
		case obj_ally_hammerhead:
			_target_name = "Consesnus Hammerhead";
			_target_sprite = spr_hammerhead_cruiser;
		break;
		case obj_ally_medusa:
		_target_name = "Jovian Medusa Cruiser";
		_target_sprite =spr_medusa;
		break;
	}
	
	
	_intro = "An allied ship is lost and damaged\n and needs to be escorted to the Station for repairs.."
	_title = "A Friend In Need";
	_tag_line = "On the road again...";
	_description = "!!!!!URGENT!!!!!\n  Allied Ship in need of assistance...\n Please LOCATE and ESCORT(" +string(self._fetch_amount) + ")("+string(self._target_name)+") \n to home station... ";
}

function mission_salvage() : mission() constructor
{
	
	_type = TYPE.KILL;
	_reward = REWARD.ORE;
	_reward_text = "Reward: A Metric Butt Tonne of ORE"
	_ore_reward = 20;
	_kill_amount = irandom_range(10,25);
	_kill_target = choose(obj_asteroid,obj_magnetic_mine);
	switch(_kill_target)
	{
		case obj_asteroid:
			_target_name = "Astroids"
			_target_sprite = spr_asteroid_med
		break;
		case obj_magnetic_mine:
			_target_name = "Pirate Mag Mines"
			_target_sprite = spr_mine_strip8;
		break;
	}
	_intro = "This sector is starting to look like a garbabe heap! \n Please remove this trash from the immediate area"
	_title = "Garbage Disposal";
	_tag_line = "it's a dirty job...";
	_description = "Locate and remove ("+string(self._kill_amount)+") \n " + string(self._target_name) + " The sector thanks you for your service.";
}