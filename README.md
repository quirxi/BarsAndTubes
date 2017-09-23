# BarsAndTubes

Simple 3D library for [openscad](http://www.openscad.org/) that makes it easy to generate the most common bar and tube profiles.

![BarsAndTubes](pics/BarsAndTubes.png)



## Usage

Just include the file BarsAndTubes.scad in the beginning of your scad file like this: 

```include <BarsAndTubes.scad>;```

## Profiles

Up to now there are following basic metal profiles available:

**`Hexagonal Bar:`**   ```hexBar( barWidth,barLength );```

![Hexagonal Bar](pics/HexBar_s.jpg)


**`Rectangular Bar:`**  ```rectangularBar( barWidth,barHeight,barLength );```

![Rectangular Bar](pics/RectangularBar_s.jpg)


**`Square Bar:`**  ```squareBar( barWidth,barLength );```

![Square Bar](pics/SquareBar_s.jpg)


**`Round Bar:`**  ```roundBar( barDiameter,barLength );```

![Round Bar](pics/RoundBar_s.jpg)


**`Rectangular Tube:`**  ```rectangularTube( tubeWidth, tubeHeight, tubeLength, tubeWall );```

![Rectangular Tube](pics/RectangularTube_s.jpg)


**`Square Tube:`**  ```squareTube( tubeHeight, tubeLength, tubeWall );```

![Square Tube](pics/SquareTube_s.jpg)


**`Round Tube:`**  ```roundTube( tubeDiameter, tubeLength, tubeWall );```

![Round Tube](pics/RoundTube_s.jpg)


**`Angle Iron:`**  ```angleIron( angleWidth, angleHeight, angleLength, angleWall );```

![Angle Iron](pics/AngleIron_s.jpg)


**`U Profile:`**  ```uProfile( uprofileWidth, uprofileHeight, uprofileLength, uprofileWall );```

![U Profile](pics/U-Profile_s.jpg)



## References

* http://www.openscad.org/
* https://www.thingiverse.com/thing:2550584

## Authors:

* quirxi (https://github.com/quirxi)


## License

Distributed under the MIT License.


