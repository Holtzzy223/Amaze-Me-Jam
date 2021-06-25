// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//macros
#macro SAVEFILE "Data.SSMB"
#macro MISSFILE "Miss.SSMB"


function cull_out_of_view(layer_id,_camera,padding,rect_scale)
{
	instance_deactivate_layer(layer_id);
	var cam, cleft,ctop,camw,camh;
	
	cam = _camera;
	cleft = camera_get_view_x(cam);
	ctop = camera_get_view_y(cam);
	camh = camera_get_view_height(cam);
	camw = camera_get_view_width(cam);
	instance_activate_region(cleft-padding,ctop-(padding*rect_scale),camw+padding,camh+(padding*rect_scale),true);
}

function draw_set_text(color, font, halign, valign) 
{

	// Allows one line setup of major text drawing vars.
	// Requiring all four prevents silly coders from forgetting one
	// And therefore creating a dumb dependency on other event calls.
	// (Then wondering why their text changes later in development.)

	draw_set_colour(color);
	draw_set_font(font);
	draw_set_halign(halign);
	draw_set_valign(valign);
}
//SAVE/LOAD
function save_game(save_file)
{
	//clear old file
	if(file_exists(save_file)) file_delete(save_file);
	if(file_exists(MISSFILE)) file_delete(MISSFILE);
	//save data array
	
	var _save_data = array_create(0);
	
	//create a save struct per instance
	with(manager_save_data)
	{
		//is object in a faction
		if (id.faction!=undefined)
		{
			//what kind of object
			switch(id.object_type)
			{
				case OBJ_TYPE.PLAYER :
					var _save_entity = 
					{
						obj : object_get_name(object_index),
						x : x,
						y : y,
						sprite_index : sprite_index,
						image_index : image_index,
						image_blend : image_blend,
						image_angle : image_angle,
						layer : layer,
						depth : depth,
						speed : speed,
						direction : direction,
						hp:hp,
						faction : faction,
						max_hp:max_hp,
						max_speed : max_speed,
						energy: energy,
						max_energy: max_energy,
						current_ship : current_ship,
						current_laser : current_laser,
						current_bullet : current_bullet,
						ore_amount : ore_amount,
						shield : shield,
						has_shield :has_shield,
						max_shield : max_shield,
						allies_saved : allies_saved
					}
					if(current_mission!=undefined)
					{
						var _mission_data = current_mission;
					}
					break;
				default:
					var _save_entity = 
					{
						obj : object_get_name(object_index),
						x : x,
						y : y,
						image_index : image_index,
						image_blend :image_blend,
						image_angle : image_angle,
						layer : layer,
						depth : depth,
						speed : speed,
						direction : direction,
						hp:hp,
						faction : faction,
						max_hp:max_hp,
						max_speed : max_speed,
						energy: energy,
						max_energy: max_energy,

						
					}
					break;
			}
		
		}
		else
		{
			//general object info
			var _save_entity = 
			{
				obj : object_get_name(object_index),
				x : x,
				y : y,
				image_index : image_index,
				image_blend :image_blend,
				image_angle : image_angle,
				layer : layer,
				depth : depth
			}
		}
		array_push(_save_data,_save_entity);
	}
	
	//stringify data
	var _string = json_stringify(_save_data);
	var _mission_string = "";
	var _buffer = buffer_create(string_byte_length(_string)+1,buffer_fixed,1);
	var _mission_buffer = undefined;
	buffer_write(_buffer,buffer_string,_string);
	
	buffer_save(_buffer,save_file);
	if(obj_player.current_mission!=undefined)
	{
		_mission_string = json_stringify(_mission_data);
		_mission_buffer = buffer_create(string_byte_length(_mission_string)+1,buffer_fixed,1);
		buffer_write(_mission_buffer,buffer_string,_mission_string);
		buffer_save(_mission_buffer,MISSFILE);
		buffer_delete(_mission_buffer);
	}
	buffer_delete(_buffer);
	
	show_debug_message("SAVED THIS FOR YAH! "+ _string);
}

function load_game(save_file)
{
	if(file_exists(save_file))
	{
		var _buffer = buffer_load(save_file);
		var _mission_string = "";
		var _mission_data = undefined;
		if(file_exists(MISSFILE))
		{
			var _mission_buffer = buffer_load(MISSFILE);
			_mission_string = buffer_read(_mission_buffer,buffer_string);
			buffer_delete(_mission_buffer);
			_mission_data = json_parse(_mission_string);
		}
		var _string = buffer_read(_buffer,buffer_string);
		
		buffer_delete(_buffer);
		
		var _load_data = json_parse(_string);
		
		while(array_length(_load_data) > 0)
		{
			var _load_entity = array_pop(_load_data);
			var _entity_index = asset_get_index(_load_entity.obj);
			if(!instance_exists(_entity_index))
			{
				with(instance_create_layer(0,0,layer,_entity_index))
				{
					if(_entity_index.faction != undefined)
					{
						switch(_entity_index.object_type)
						{
							case OBJ_TYPE.PLAYER:
								x = _load_entity.x;
								y = _load_entity.y;
								sprite_index = _load_entity.sprite_index;
								image_blend = _load_entity.image_blend;
								image_index = _load_entity.image_index;
								image_angle = _load_entity.image_angle;
								layer = _load_entity.layer;
								depth = _load_entity.depth;
								speed = _load_entity.speed;
								max_hp = _load_entity.max_hp;
								hp = _load_entity.hp;
								faction = _load_entity.faction;
								max_speed = _load_entity.max_speed;
								energy = _load_entity.energy;
								max_energy = _load_entity.max_energy;
								current_ship = _load_entity.current_ship;
								current_laser = _load_entity.current_laser;
								current_bullet = _load_entity.current_bullet;
								if(file_exists(MISSFILE))
								{
									current_mission = new mission();
									var _arr_string = "";
									var _load_array = variable_struct_get_names(_mission_data);
									var _mission_array = variable_struct_get_names(current_mission);
									show_debug_message("Variables for Mission: " + string(_load_array));
									for (var i = 0; i < array_length(_load_array); i++;)
									{
									    _arr_string = _load_array[i] + ":" + string(variable_struct_get(_mission_data, _load_array[i]));
									    show_debug_message(_arr_string);
										variable_struct_set(current_mission,_mission_array[i],variable_struct_get(_mission_data, _load_array[i])) ;
									}
								}
								has_shield = _load_entity.has_shield;
								shield = _load_entity.shield;
								max_shield = _load_entity.max_shield;
								allies_saved = _load_entity.allies_saved;
								ore_amount = _load_entity.ore_amount;
								break;
							default:
								x = _load_entity.x;
								y = _load_entity.y;
								image_blend = _load_entity.image_blend;
								image_index = _load_entity.image_index;
								image_angle = _load_entity.image_angle;
								layer = _load_entity.layer;
								depth = _load_entity.depth;
								speed = _load_entity.speed;
								max_hp = _load_entity.max_hp;
								hp = _load_entity.hp;
								faction = _load_entity.faction;
								max_speed = _load_entity.max_speed;
								energy = _load_entity.energy;
								max_energy = _load_entity.max_energy;
							break;
						}
					}
					else
					{
						x = _load_entity.x;
						y = _load_entity.y;
						image_blend = _load_entity.image_blend;
						image_index = _load_entity.image_index;
						image_angle = _load_entity.image_angle;
						layer = _load_entity.layer;
						depth = _load_entity.depth;
					}
				}
			}
			show_debug_message("LOADED THIS FOR YAH! " +_string);
		}
	}
}
