include <./lib/dice.scad>

// https://www.reddit.com/r/boardgames/comments/kxt1q3/genius_square_dice/
// NB linked https://rollthedice.online/en/roll/genius-square has two of the same die.

// 1. A1 C1 D1 D2 E2 F3
// GeniusSquare3
translate([0, 0, 0])
die(["A1", "C1", "D1", "D2", "E2", "F3"]);

// 2. A2 B2 C2 A3 B1 B3
// GeniusSquare5
translate([0, 20, 0])
die(["A2", "A3", "B1", "B2", "B3", "C2"]);

// 3. C3 D3 E3 B4 C4 D4
// GeniusSquare6
translate([0, 40, 0])
die(["B4", "C3", "C4", "D3", "E3", "D4"]);

// 4. E1 F2 F2 B6 A5 A5
// GeniusSquare4
translate([0, 60, 0])
die(["A5", "A5", "F2", "F2", "E1", "B6"]);

// 5. A4 B5 C6 C5 D6 F6
// GeniusSquare1
// GeniusSquare2 (duplicate)
translate([0, 80, 0])
die(["A4", "B5", "C5", "C6", "D6", "F6"]);

// 6. E4 F4 E5 F5 D5 E6
// GeniusSquare7
translate([0, 100, 0])
die(["E4", "E5", "E6", "D5", "F4", "F5"]);

// 7. F1 F1 F1 A6 A6 A6
// Missing from rollthedice.online
translate([0, 120, 0])
die(["A6", "A6", "A6", "F1", "F1", "F1"]);
