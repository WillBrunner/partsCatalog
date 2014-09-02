
module dome(globeDiameter= 5 * 25.4, materialThickness = 25.4/8, flangeWidth = 25.4/4){ 
//globeDiameter= 5 * 25.4;
//materialThickness = 25.4/8;
globeInnerDiameter = globeDiameter - materialThickness*2;
//flangeWidth = 25.4/4;

color("green",.1)
%difference(){
union()
{
//translate([0,0,-materialThickness])
cylinder(materialThickness,globeDiameter/2+flangeWidth,globeDiameter/2+flangeWidth);
translate([0,0,materialThickness])
sphere(globeDiameter/2);
}
translate([0,0,materialThickness])
sphere(globeInnerDiameter/2);
translate([-globeDiameter, -globeDiameter, -globeDiameter])
cube([2*globeDiameter,2*globeDiameter,globeDiameter],false);
}
}
