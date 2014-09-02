module 12ax7(){
tubeDiameter = 22.225;
bodyLength = 42;
pinDiameter = 1.015;
pinLength = 6;
filletRadius = 3;
numPins = 9;
pinCircleDiameter = 11.89;
//minkowski(){
//sphere(filletRadius);

//{
color("Blue")
translate([0,0,pinLength])
cylinder(bodyLength, tubeDiameter/2, tubeDiameter/2);

for( i = [ 0 : numPins-1 ] )
{
translate([pinCircleDiameter/2 * sin(i* 360 / (numPins+1)), pinCircleDiameter/2 * cos(i* 360 / (numPins+1)),0]) 
//rotate( i * 360 / 6, [0, 0, 1])
color("Gray")
cylinder(pinLength, pinDiameter/2, pinDiameter/2);
}
translate([0,0,bodyLength+pinLength])
color("Blue")
sphere(tubeDiameter/2);
translate([0,0,pinLength+bodyLength + tubeDiameter/2])
color("Blue")
cylinder(3,1,0);
//}
}
