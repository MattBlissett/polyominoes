/*
 * Polyominoes: Generate polyominoes and a board in which to tile them.
 */

// Cube size
$size = 10;
// Tolerance (shrink cubes by this much on horizontal sides)
$tolerance = 0.1;
// Gaps between cubes
$gap = 1;
// Locking grid height / connector depth from surface
$grid_height = 2;
// Holes
$hole = true;
$rim_thickness = 0.45*9;
// Show A-B-C/1-2-3 labels on board
$letters = true;
$font = "Comfortaa:style=Bold";

module shape(coords) {
     // Size of connection between cubes
     connector_hsize = $size - 2*$grid_height;
     connector_vsize = $size - 2.2*$grid_height;

     // Actual size of cube
     w = $size-2*$tolerance;

     union() {
          for (i = [0:len(coords)-1]) {
               c = coords[i];

               difference() {
                    translate([($size+$gap)*c[0], ($size+$gap)*c[1], 0])
                         union() {
                         // Main cube
                         translate([$tolerance, $tolerance, 0])
                              cube([w,w,$size]);

                         if (i > 0) {
                              prev = coords[i-1];

                              dx = c[0] - prev[0];
                              dy = c[1] - prev[1];

                              //echo("c", c, "prev", prev);
                              //echo("dx", dx, "dy", dy);

                              // Connector to previous cube
                              if (dx != 0) {
                                   connector_size = $rim_thickness + $gap;

                                   translate([(1-dx)*($size+$gap)/2-(connector_size/2+$gap/2),$grid_height,1.1*$grid_height])
                                        cube([connector_size,connector_hsize,connector_vsize]);
                              } else {
                                   connector_size = $rim_thickness + $gap;

                                   translate([$grid_height, (1-dy)*($size+$gap)/2-(connector_size/2+$gap/2),1.1*$grid_height])
                                        cube([connector_hsize,connector_size,connector_vsize]);
                              }

                         }
                    }

                    // Cylindrical hole
                    if ($hole) {
                         translate([$tolerance+($size+$gap)*c[0], $tolerance+($size+$gap)*c[1], 0])
                              union() {
                              translate([w/2,w/2,$size/2+0.8])
                                   cylinder(d=w-$rim_thickness, h=$size/2, $fn=32);
                              translate([w/2,w/2,-0.8])
                                   cylinder(d=w-$rim_thickness, h=$size/2, $fn=32);
                         }
                    }
               }

          }
     }
}

module blocker() {
     translate([$size/2+$tolerance, $size/2+$tolerance, 0])
     cylinder(d=$size-$tolerance, h=0.6*$size);
}

module boardText(t)
{
     linear_extrude(height = 0.2) {text(t, size = ($size-1)/2, font = $font, halign = "center", valign = "center", $fn = 16);}
}

module grid(xcells, ycells) {
     translate([-($size+$gap)*xcells/2, -($size+$gap)*ycells/2, 0])
     union() {
          for (x = [0:xcells]) {
               translate([($size+$gap)*x, (($size+$gap)*ycells)/2, (0.8+$grid_height)/2])
                    cube([0.8, ($size+$gap)*ycells+0.8, 0.8+$grid_height], center=true);
          }

          for (y = [0:ycells]) {
               translate([(($size+$gap)*xcells)/2, ($size+$gap)*y, (0.8+$grid_height)/2])
                    cube([($size+$gap)*xcells+0.8, 0.8, 0.8+$grid_height], center=true);
          }
     }
}

module board(xcells, ycells) {
     depth = 0.81;

     difference() {
          union () {
               color("white")
               difference() {
                    // board base
                    translate([0, 0, 0.5])
                         cube([($size+$gap)*(xcells+3),($size+$gap)*(ycells+3),1], center=true);

                    // grid hollow
                    translate([0, 0, 0.9])
                         cube([($size+$gap)*xcells,($size+$gap)*ycells,0.2], center=true);
               }

               color("#333")
                    grid(xcells, ycells);
          }

          if ($letters) {
               union() {
                    letters = ["", "A", "B", "C", "D", "E", "F", "G", "H"];
                    for (x = [1:xcells]) {
                         translate([-($size+$gap)*xcells/2-3*$size/4, ($size+$gap)*ycells/2+$size/2-($size+$gap)*x, depth]) boardText(str(letters[x]));
                    }
                    for (y = [1:ycells]) {
                         translate([-($size+$gap)*xcells/2-$size/2+($size+$gap)*y, ($size+$gap)*ycells/2+3*$size/4, depth]) boardText(str(y));
                    }
               }
          }
     }

     color("#333")
          minkowski() {
          union() {
               for (r = [0:90:270]) {
                    rotate(a=r)
                         translate([-($size+$gap)*(xcells+3)/2, 0, $grid_height])
                         cube([1, ($size+$gap)*(ycells+3), 2*$grid_height], center=true);
               }
          }
          cylinder(r=1, h=1, $fn=16);
     }
}
