include <./lib/polyomino.scad>
include <./lib/pentomino_dimensions.scad>

count = 1;

// Y
color("yellow")
translate([0, 0, 0])
shape([[1,0], [1,1], [0,1], [1,1], [1,2], [1,3]]);

if (count > 1) {
     color("yellow")
          translate([0, 2*$off, 0])
          shape([[0,0], [0,1], [0,2], [1,2], [0,2], [0,3]]);
}
