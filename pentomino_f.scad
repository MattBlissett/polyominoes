include <./lib/polyomino.scad>
include <./lib/pentomino_dimensions.scad>

count = 1;

// F
color("grey")
translate([0, 0, 0])
shape([[1,0], [1,1], [0,1], [1,1], [1,2], [2,2]]);

if (count > 1) {
     color("grey")
          translate([2*$off, 0, 0])
          shape([[1,0], [1,1], [0,1], [1,1], [1,2], [2,2]]);
}
