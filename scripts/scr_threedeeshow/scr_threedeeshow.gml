function scr_threedeeshow(_x,_y,_z){

    var scale = 100 / (100 + _z);
    var proj_x = _x * scale;
    var proj_y = _y * scale;
    return [proj_x, proj_y];

}