include <./lib/polyomino.scad>

translate([-40,40,0])
union() {
     translate([0,0,-0.8])
          board(3,3, $size = 10);

     translate([-16, -16, 0])
          shape([[0,0], [1,0], [2,0], [2,1], [2,2], [1,2], [0,2], [0,1], [0,0]]);

     translate([-5, -5, 0])
          shape([[0,0]], $hole = false);
}

translate([60,60,0])
 union() {
     $size = 15;

     translate([0,0,-0.8])
          board(3,3);

     translate([-$size/2 - $size - 1, -$size/2 - $size - 1, 0])
          shape([[0,0], [1,0], [2,0], [2,1], [2,2], [1,2], [0,2], [0,1], [0,0]]);

     translate([-$size/2, -$size/2, 0])
          shape([[0,0]], $hole = false);
}

translate([80,-80,0])
 union() {
     $size = 20;

     translate([0,0,-0.8])
          board(3,3);

     translate([-$size/2 - $size - 1, -$size/2 - $size - 1, 0])
          shape([[0,0], [1,0], [2,0], [2,1], [2,2], [1,2], [0,2], [0,1], [0,0]]);

     translate([-$size/2, -$size/2, 0])
          shape([[0,0]], $hole = false);
}
