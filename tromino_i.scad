include <./lib/polyomino.scad>
include <./lib/mon-d-tri-tetromino_dimensions.scad>

count = 1;

// I
color("black")
translate([0, 0, 0])
shape([[0,0], [1,0], [2,0]]);

if (count > 1) {
     color("black")
          translate([0, $off, 0])
          shape([[0,0], [1,0], [2,0]]);
}
