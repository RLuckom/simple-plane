module wing() {
    hull() { // the convex hull of...
        rotate([90, 0, 0]) scale([5, 1, 1]) cylinder(1, r=2, $fn=60); // a big stretched cylinder, and
        translate([-6, 70, 0]) rotate([90, 0, 0]) scale([5, 1, 1]) cylinder(1, r=.5, $fn=60); //a little stretched cylinder, 70 units away from the big one and swept back
    }
}

module wings() { // a wing and its mirror image
    translate([0, 1, -.5]) wing();
    translate([0, -1, -.5]) mirror([0, 1, 0]) wing();
}

scale([12, 0.5, 1]) sphere(4.1, $fn=40); // a stretched, skinny sphere
scale([2, 1, 1]) translate([5, 0, 0.8]) wings(); // a pair of wings, stretched back for more surface area
translate([-34, 0, 0]) scale([1, .3, 0.8]) wings(); // a smaller pair of wings, further back
rotate([90, 0, 0]) translate([-34, 0, 0]) scale([1, .2, 0.6]) wing(); // a single, upright wing