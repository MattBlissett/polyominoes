include <./lib/polyomino.scad>
include <./lib/pentomino_dimensions.scad>

count=1;
$fn = 128;

// Blocker
color("gold") translate([0*$off, 0*$off, 0]) blocker();
color("gold") translate([1*$off, 0*$off, 0]) blocker();
color("gold") translate([0*$off, 1*$off, 0]) blocker();
color("gold") translate([1*$off, 1*$off, 0]) blocker();
