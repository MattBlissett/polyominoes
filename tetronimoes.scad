include <./lib/polyomino.scad>

$size = 10;
off = $size + 1;

$fn = 32;

// #
color("grey")
shape([[0,0]]);

// ##
color("lime")
translate([3*off, off, 0])
shape([[0,0], [1,0]]);

// ###
color("red")
translate([3*off, 0, 0])
shape([[0,0], [1,0], [2,0]]);

// ####
color("#333")
translate([0, 5*off, 0])
shape([[0,0], [1,0], [2,0], [3,0]]);

//  #
// ##
color("green")
translate([4*off, 4*off, 0])
shape([[1,0], [1,1], [0,1]]);

//  #
// ###
color("yellow")
translate([4*off, off, 0])
shape([[1,0], [1,1], [0,1], [1,1], [1,2]]);

//  ##
// ##
color("violet")
translate([3*off, 2*off, 0])
shape([[0,0], [0,1], [1,1], [1,2]]);

// ##
// ##
color("blue")
translate([0, 3*off, 0])
shape([[0,0], [1,0], [1,1], [0,1], [0,0]]);

//   #
// ###
color("cyan")
translate([2*off, 2*off, 0])
shape([[0,0], [0,1], [0,2], [1,2]]);

color("gold")
union() {
     translate([off, 0, 0]) blocker();
     translate([2*off, 0, 0]) blocker();

     translate([0, off, 0]) blocker();
     translate([off, off, 0]) blocker();
     translate([2*off, off, 0]) blocker();

     translate([0, 2*off, 0]) blocker();
     translate([off, 2*off, 0]) blocker();
}

translate([3*off-$gap/2,3*off-$gap/2,0])
board(6, 6);
