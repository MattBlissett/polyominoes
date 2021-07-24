include <./lib/polyomino.scad>
include <./lib/pentomino_dimensions.scad>

count = 1;

// T
color("green")
translate([0, 0, 0])
shape([[0,0], [1,0], [2,0], [1,0], [1,1], [1,2]]);

if (count > 1) {
     color("green")
          translate([$off, $off, 0])
          shape([[1,0], [1,1], [1,2], [0,2], [1,2], [2,2]]);
}
