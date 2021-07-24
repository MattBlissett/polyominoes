include <./lib/polyomino.scad>
include <./lib/pentomino_dimensions.scad>

count = 1;

// L
color("cyan")
translate([0, 0, 0])
shape([[0,0], [0,1], [1,1]]);

if (count > 0) {
     color("cyan")
          translate([$off, 0, 0])
          shape([[0,0], [1,0], [1,1]]);
}
