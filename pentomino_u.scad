include <./lib/polyomino.scad>
include <./lib/pentomino_dimensions.scad>

count = 1;

// U
color("red")
translate([0, 0, 0])
shape([[0,1], [0,0], [1,0], [2,0], [2,1]]);

if (count > 1) {
     color("red")
          translate([$off, $off, 0])
          shape([[0,0], [0,1], [1,1], [2,1], [2,0]]);
}
