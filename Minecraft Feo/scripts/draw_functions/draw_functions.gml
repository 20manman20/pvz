function draw_3d(_s_index = sprite_index,_i_index=image_index,_x=x,_y=y,_z=z,_xscale=image_xscale,_yscale=image_yscale,_angle=image_angle,_color=image_blend,_alpha=image_alpha) {
	var drawx,drawy
	drawx	= _x+lengthdir_x(-_z/24*32,CAMERA_UP)
	drawy	= _y+lengthdir_y(-_z/24*32,CAMERA_UP)
	draw_sprite_ext(_s_index,_i_index,drawx,
							drawy,_xscale,2*_yscale,_angle+minus_cam_angle,_color,_alpha)
}

// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function draw_sprite_ext_skew(sprite,subimg, _x,_y, scalex,scaley, rot,alpha, skew_kx,skew_ky, skew_sx,skew_sy) {

// compute values that will be reused:
var rcos = dcos(rot);
var rsin = -dsin(rot);
var x1 = -sprite_get_xoffset(sprite) * scalex;
var x2 = x1 + sprite_get_width(sprite) * scalex;
var y1 = -sprite_get_yoffset(sprite) * scaley;
var y2 = y1 + sprite_get_height(sprite) * scaley;

// compute corner coordinates:
for (var c = 0; c < 4; c++) {
    // pick local corner
    var lx; if (c & 1) lx = x2; else lx = x1;
    var ly; if (c & 2) ly = y2; else ly = y1;
    // see https://yal.cc/2d-pivot-points/:
    var rx = lx * rcos - ly * rsin;
    var ry = lx * rsin + ly * rcos;
    // transform and store corner coordinates:
    global._draw_sprite_ext_skew_x[c] = _x + (rx + ry * skew_kx) * skew_sx;
    global._draw_sprite_ext_skew_y[c] = _y + (ry + rx * skew_ky) * skew_sy;
}

// draw the sprite quad:
draw_sprite_pos(sprite, subimg,
    global._draw_sprite_ext_skew_x[0],
    global._draw_sprite_ext_skew_y[0],
    global._draw_sprite_ext_skew_x[1],
    global._draw_sprite_ext_skew_y[1],
    global._draw_sprite_ext_skew_x[3],
    global._draw_sprite_ext_skew_y[3],
    global._draw_sprite_ext_skew_x[2],
    global._draw_sprite_ext_skew_y[2],
    alpha
);
}