/// @description Insert description here
// You can write your code in this editor


parallax_layer(parallax_layer_far,0.95,0.95);
parallax_layer(parallax_layer_overlay_back,0.925,0.925);
parallax_layer(parallax_layer_mid,0.85,0.85);
parallax_layer(parallax_layer_close,0.8,0.8);
parallax_layer(parallax_layer_overlay,0.75,0.75);

camera_set_view_pos(view_camera[0],global.cam_x,global.cam_y);
if (!surface_exists(view_surf))
{
    view_surf = surface_create(global.camera_width+1, global.camera_height+1);
}
view_surface_id[0] = view_surf;