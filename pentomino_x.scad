include <./lib/polyomino.scad>
include <./lib/pentomino_dimensions.scad>

count = 1;

// X
color("orange")
translate([0, 0, 0])
shape([[1,0], [1,1], [1,2], [1,1], [0,1], [1,1], [2,1]]);

if (count > 1) {
     color("orange")
          translate([2*$off, $off, 0])
          shape([[1,0], [1,1], [1,2], [1,1], [0,1], [1,1], [2,1]]);
}
