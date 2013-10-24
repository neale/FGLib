!Neale ratzlaff
!Geo.f90
!June 9 2012
!this program is an attempt to rework my second assignment, the one that calculates areas and volumes. I do this one because fortran is a mathmatical language
!Input: What shape you want to do, and what calculation
!Output: The volume, area, or both. Of the respective shape. 
!You should really view this in Notepad ++, Vim's format sucks. 

PROGRAM geo
! Program name

        IMPLICIT NONE 
        !Makes it so that that typecasting must use the name, ex(INTEGER), instead of i. 
 
        REAL, PARAMETER :: PI = 3.1415926
		REAL, PARAMETER :: THIRDS = 1.3333333333
        !Parameters are like defines. But don't use variables in them
		
		INTEGER :: construct, specs
		!These are ints
		REAL :: radius, width, length, height, base, base1, base2, area, volume
		!Floats and doubles
		CHARACTER :: answer = 'y'
		!Character is a char, IF char holds more than one letter, I would use (len=(#of chars))
		!variables are type castes like such ^ 

        do while (answer == 'y')
                PRINT *, 'So what shape so you want to work with?: circle[0],&
                &rectangle[1], triangle[2], or trapezoid[3]'
                READ *, construct
                PRINT *, 'Would you like to calculate the area[1], volume[2], or both[0]?: '
                READ *, specs
        ! Now this block will determine which calculations are done

			IF (construct == 0) THEN
					PRINT *, 'What is the radius?: '
					READ *, radius
					area = (PI * radius**2)
					volume = (THIRDS*PI*(radius**3))
							IF (specs == 1) THEN
									PRINT *, 'The area of the circle is: ', area
							END IF
							IF (specs == 2) THEN
									PRINT *, 'The volume of your circle is: ', volume
							END IF
							IF (specs == 0) THEN
									PRINT *, 'The area and volume are: ', area, volume
							END IF
			END IF
			IF (construct == 1) THEN
					PRINT *, 'What is the length?: '
					READ *, length
					PRINT *, 'What is the width?: '
					READ *, width
					area = (length * width) 
							IF (specs == 1) THEN
									PRINT *, 'The area of the rectangle is: ', area
							END IF
							IF (specs == 2) THEN
									PRINT *, 'What is the height?: '
									READ *, height
									volume = (length * width * height)
									PRINT *, 'The volume of the prism is: ', volume
							END IF
							IF (specs == 0) THEN
									PRINT *, 'What is the height: '
									READ *, height
									volume = (length * width * height)
									PRINT *, 'The area and volume are: ', area, volume
							END IF
			END IF				
			IF (construct == 2) THEN
					PRINT *, 'What is the base?: '
					READ *, base
					PRINT *, 'What is the height?: '
					READ *, height
					area = (.5 * base * height)					
							IF (specs == 1) THEN
									PRINT *, 'The area of the triangle is: ', area
							END IF
							IF (specs == 2) THEN
									PRINT *, 'What is the length?: '
									READ *, length
									volume = (.5 * base * height * length)
									PRINT *, 'The volume of the prism is: ', volume
							END IF
							IF (specs == 0) THEN
									PRINT *, 'What is the length: '
									READ *, length
									volume = (.5 * base * height * length)
									PRINT *, 'The area and volume are: ', area, volume
							END IF
			END IF				 
			IF (construct == 3) THEN
					PRINT *, 'What is the first base?: '
					READ *, base1
					PRINT *, 'What is the second base?: ' 
					READ *, base2
					PRINT *, 'What is the height?: '
					READ *, height
					area = (.5 * base1 * base2 * height)
							IF (specs == 1) THEN
									PRINT *, 'The area of the trap is: ', area
							END IF
							IF (specs == 2) THEN       
									PRINT *, 'What is the length?: '
									READ *, length
									volume = (.5 * base1 * base2 * height * length)
									PRINT *, 'The volume of the trap is: ', volume
							END IF
							IF (specs == 0) THEN
									PRINT *, 'What is the length: '
									READ *, length
									volume = (.5 * base1 * base2 * height * length)
									PRINT *, 'The area and volume are: ', area, volume
							END IF
			END IF

        PRINT *, 'Would you like to calculate another shape? [y] [n]: '
        READ *, answer
		END DO

END PROGRAM
