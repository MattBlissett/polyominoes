include <./lib/polyomino.scad>
include <./lib/pentomino_dimensions.scad>

count = 1;

// W
color("beige")
translate([0, 0, 0])
shape([[0,0], [0,1], [1,1], [1,2], [2,2]]);

if (count > 1) {
     color("beige")
          translate([$off, 0, 0])
          shape([[0,0], [1,0], [1,1], [2,1], [2,2]]);
}
