$font = "Comfortaa:style=Bold";

module dieText(textSize, t)
{
     sizeAdjust = textSize - 1;
     translate([0,0,-0.35])
     linear_extrude(height = 0.7) {text(t, size = sizeAdjust, font = $font, halign = "center", valign = "center", $fn = 16);}
}

module die(faces) {

     size = 16;
     rounding = 2;
     w = size - rounding - rounding;
     textSize = size/2-0.5;

     depth = (size/2)-(0.7/2)+0.1;

     color("lightgrey")
          translate([size/2, size/2, size/2])
          difference() {
          minkowski($fn=64) {
               cube([w, w, w], center=true);
               sphere(r=rounding);
          }

          union() {
               // 1
               translate([0,0,depth]) dieText(textSize, faces[0]);

               // 6
               translate([0,0,-depth]) mirror([0, 1, 0]) dieText(textSize, faces[1]);

               // 2
               translate([0,-depth,0]) rotate([90, 0, 0]) dieText(textSize, faces[2]);

               // 5
               translate([0,depth,0]) rotate([90, 0, 0]) mirror([0, 1, 0]) dieText(textSize, faces[3]);

               // 3
               translate([depth,0,0]) rotate([90, 0, 0]) rotate([0, 90, 0]) dieText(textSize, faces[4]);

               // 4
               translate([-depth,0,0]) rotate([90, 0, 0]) rotate([0, 90, 0]) mirror([0, 1, 0]) dieText(textSize, faces[5]);
          }
     }
}

//die(["Aa", "Bb", "Cc", "Dd", "Ee", "Ff"]);
