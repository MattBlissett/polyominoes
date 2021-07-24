include <./lib/polyomino.scad>
include <./lib/pentomino_dimensions.scad>

count=1;

// Z
color("navy")
translate([$off, 0, 0])
shape([[0,0], [0,1], [1,1], [2,1], [2,2]]);

if (count > 1) {
     color("navy")
          translate([0, $off, 0])
          shape([[0,0], [0,1], [1,1], [2,1], [2,2]]);
}
