$fn=50;

// Bars

//// Rectangular Bars: width=x-axis; height=y-axis; lenght=z-axis
module rectangularBar(width, height, length)
{
    cube( [width,height,length] );
}

//// Square Bars: lenght=z-axis
module squareBar(height, length)
{
    cube( [height,height,length] );
}

//// Round Bars: lenght=z-axis
module roundBar(diameter, length)
{
    cylinder(h=length,d=diameter,center=false);
}

//// Hexagonal Bars: lenght=z-axis ; Attention: width is measured along the flats = inner Diameter !
module hexBar(width, length)
{   // see:  https://en.wikipedia.org/wiki/Hexagon
    // d = (sqrt(3)/2) * D    
    // => D = d / (sqrt(3)/2) and R = D/2
    // where d=innerDiameter=width and D=outerDiameter and r = innerRadius and R = outerRadius
    //outerDiameter = width / (sqrt(3.0)/2.0);
    // or:
    // R = r / cos(30°) 
    // or:
    // R = r / (sqrt(3.0)/2.0)
//     outerRadius1 = (width/(sqrt(3.0)/2.0)) / 2.0;
//     outerRadius2 = (width/2)/cos(30.0);
//     outerRadius3 = (width/2)/(sqrt(3.0)/2.0);
//     echo(width=width);
//     echo(outerRadius1=outerRadius1);
//     echo(outerRadius2=outerRadius2);
//     echo(outerRadius3=outerRadius3);
    
    linear_extrude(height=length)
    {
        outerRadius = (width/2)/cos(30.0);
        circle(r=outerRadius,$fn=6);
    }
}


// Tubes

//// Rectangular Tube: width=x-axis; height=y-axis; lenght=z-axis
module rectangularTube(width, height, length, wall)
{
    difference()
    {
        cube( [width,height,length] );
        translate([wall,wall,-2])
            cube( [width-2*wall,height-2*wall,length+4] );
    }
}

//// Square Tubes: lenght=z-axis
module squareTube(height, length, wall)
{
    difference()
    {
        cube( [height,height,length] );
        translate([wall,wall,-2])
            cube( [height-2*wall,height-2*wall,length+4] );
    }
}

//// Round Tubes: lenght=z-axis
module roundTube(diameter, length, wall)
{
    difference()
    {
        cylinder(h=length,d=diameter,center=false);
        translate([0,0,-2])
            cylinder(h=length+4,d=diameter-2*wall,center=false);
    }
}

// Angle Irons
module angleIron(width, height, length, wall)
{
    union()
    {
        cube( [width, wall,length] );
        translate( [wall,0,0] )
            rotate( [0,0,90] )
                cube( [height, wall,length] );
    }
}

// U-Profile 
module uProfile(width, height, length, wall)
{
    difference()
    {
        cube( [width, height, length] );
        translate( [wall,wall,-2] )
            cube( [width-2*wall, height, length+4] );
    }
}

// bars
barWidth=60;
barHeight=40;
barLength=500;
barDiameter=50;
// tubes
tubeWidth=60;
tubeHeight=40;
tubeLength=500;
tubeDiameter=50;
tubeWall=2;
// angle iron
angleWidth=50;
angleHeight=40;
angleLength=500;
angleWall=5;
// u-profiles
uprofileWidth=60;
uprofileHeight=40;
uprofileLength=500;
uprofileWall=4;


color( "LightSkyBlue", 9.0 )
{
translate([600+barWidth/2,barWidth/2,0]) 
    hexBar( barWidth,barLength );
    
translate([500,0,0]) 
    rectangularBar( barWidth,barHeight,barLength );

translate([400,0,0]) 
    squareBar( barWidth,barLength );

translate([300+barDiameter/2,barDiameter/2,0]) 
    roundBar( barDiameter,barLength );

translate([200,0,0]) 
    rectangularTube( tubeWidth, tubeHeight, tubeLength, tubeWall );

translate([100,0,0]) 
    squareTube( tubeHeight, tubeLength, tubeWall );

translate([barDiameter/2,barDiameter/2,0]) 
    roundTube( tubeDiameter, tubeLength, tubeWall );

translate([-100,0,0])
    angleIron( angleWidth, angleHeight, angleLength, angleWall );

translate([-200,0,0])
    uProfile( uprofileWidth, uprofileHeight, uprofileLength, uprofileWall );
}

