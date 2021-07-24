include <./lib/polyomino.scad>
include <./lib/pentomino_dimensions.scad>

count = 1;

// P
color("blue")
translate([0, 0, 0])
shape([[0,2], [0,1], [0,0], [1,0], [1,1], [0,1]]);

if (count > 1) {
     color("blue")
          translate([0, 2*$off, 0])
          shape([[1,0], [1,1], [1,2], [0,2], [0,1], [1,1]]);
}
