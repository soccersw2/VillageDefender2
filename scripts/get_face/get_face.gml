/// @desc get_face()
face = point_direction(x,y,mouse_x,mouse_y);
face = round(face/45);
//face = round(dir/45);
if (face == 8) {
	face = 0;
}