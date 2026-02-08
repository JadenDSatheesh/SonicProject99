function get_slope_angle(_xoff) {
    var left_x = x - _xoff;
    var right_x = x + _xoff;
    var y_sample = y + 1;

    var y1 = 0;
    var y2 = 0;
    var found1 = false;
    var found2 = false;

    // Scan down from y for each side until we find ground
    for (var i = 0; i < 16; i++) {
        if (!found1 && position_meeting(left_x, y_sample + i, obj_ground)) {
            y1 = y_sample + i;
            found1 = true;
        }
        if (!found2 && position_meeting(right_x, y_sample + i, obj_ground)) {
            y2 = y_sample + i;
            found2 = true;
        }
    }

    if (found1 && found2) {
        var rise = y2 - y1;
        var run = right_x - left_x;
        return radtodeg(arctan2(rise, run));
    }

    // If one side is missing, return 0 (flat ground)
    return 0;
}