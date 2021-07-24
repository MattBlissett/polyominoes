include <./lib/polyomino.scad>
include <./lib/pentomino_dimensions.scad>

count = 1;

// V
color("lime")
translate([0, 0, 0])
shape([[0,0], [0,1], [0,2], [1,2], [2,2]]);

if (count > 1) {
     color("lime")
          translate([$off, $off, 0])
          shape([[0,0], [1,0], [2,0], [2,1], [2,2]]);
}
