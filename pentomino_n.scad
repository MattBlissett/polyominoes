include <./lib/polyomino.scad>
include <./lib/pentomino_dimensions.scad>

count = 1;

// N
color("violet")
translate([0, 0, 0])
shape([[0,0], [1,0], [1,1], [2,1], [3,1]]);

if (count > 1) {
     color("violet")
          translate([2*$off, 0, 0])
          shape([[0,0], [1,0], [2,0], [2,1], [3,1]]);
}
