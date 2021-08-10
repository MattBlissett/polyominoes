include <./lib/polyomino.scad>

$size = 10;
off = $size + 1;

$fn = 32;

color("gold")
union() {
     translate([0.5*off, 0, 0]) blocker();
     translate([1.5*off, 0, 0]) blocker();

     translate([0, off, 0]) blocker();
     translate([off, off, 0]) blocker();
     translate([2*off, off, 0]) blocker();

     translate([0.5*off, 2*off, 0]) blocker();
     translate([1.5*off, 2*off, 0]) blocker();
}
