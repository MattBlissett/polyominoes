include <./lib/polyomino.scad>

$size = 15;
off = $size + 1;

$fn = 64;

// T
color("green")
translate([0, 0, 0])
shape([[0,0], [1,0], [2,0], [1,0], [1,1], [1,2]]);

// Y
color("yellow")
translate([0, off, 0])
shape([[0,0], [0,1], [0,2], [1,2], [0,2], [0,3]]);

// V
color("lime")
translate([0, 5*off, 0])
shape([[0,0], [0,1], [0,2], [1,2], [2,2]]);

// F
color("grey")
translate([off, 3*off, 0])
shape([[1,0], [1,1], [0,1], [1,1], [1,2], [2,2]]);

// Z
color("silver")
translate([off, 5*off, 0])
shape([[0,0], [0,1], [1,1], [2,1], [2,2]]);

// P
color("blue")
translate([2*off, 0, 0])
shape([[1,0], [1,1], [1,2], [0,2], [0,1], [1,1]]);

// L
color("cyan")
translate([4*off, 0, 0])
shape([[0,0], [1,0], [2,0], [3,0], [3,1]]);

// N
color("violet")
translate([4*off, off, 0])
shape([[0,0], [1,0], [2,0], [2,1], [3,1]]);

// W
color("beige")
translate([4*off, 2*off, 0])
shape([[0,0], [1,0], [1,1], [2,1], [2,2]]);

// X
color("orange")
translate([4*off, 4*off, 0])
shape([[1,0], [1,1], [1,2], [1,1], [0,1], [1,1], [2,1]]);

// U
color("red")
translate([4*off, 6*off, 0])
shape([[0,0], [0,1], [1,1], [2,1], [2,0]]);

// I
color("#333")
translate([7*off, 3*off, 0])
shape([[0,0], [0,1], [0,2], [0,3], [0,4]]);

color("gold") translate([3*off, 3*off, 0]) blocker();
color("gold") translate([4*off, 3*off, 0]) blocker();
color("gold") translate([3*off, 4*off, 0]) blocker();
color("gold") translate([4*off, 4*off, 0]) blocker();

translate([4*off-$gap/2,4*off-$gap/2,0])
board(8,8);
