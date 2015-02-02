

module FSR(fsrDiameter=20, fsrThickness=1, fsrNeckWidth=10, fsrLength=61)
{
	translate([0,-fsrLength/2+fsrDiameter/2,0])
	{
		cylinder(r=fsrDiameter/2, h=fsrThickness, center=true);
	}

	translate([0,fsrDiameter/4,0])
	cube([fsrNeckWidth,fsrLength-fsrDiameter/2,fsrThickness], center=true);
}


FSR();
