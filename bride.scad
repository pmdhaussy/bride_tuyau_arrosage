$fn=100;
difference() {
    union() {
        cylinder(h=20, r=30);
        translate([-45, 5, 0])
            cube([90, 15, 20]);
    }
    translate([0,0,-1]) {
        // retrait du cylindre intérieur
        cylinder(h=22, r=20);
        // retrait de l'excedent du cylindre ext
        translate([-45, 20, 0])
            cube([90, 15, 22]);
        // retrait de la partie du cylindre ext entre les supports
        translate([-20, 0, 0])
            cube([40, 50, 22]);
    }
    // trous de fixation
    translate([-38, 0, 10])
        rotate([-90, 0, 0])
            cylinder(h=50, r=2);
    translate([38, 0, 10])
        rotate([-90, 0, 0])
            cylinder(h=50, r=2);
}

