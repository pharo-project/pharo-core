example2
"
Draw a path on surface.

self example2.


"

	| surf |
	
	surf := self newSurface: 100@100.
	
	surf drawDuring: [:can |
		surf clear.
		
		can setPaint: Color blue.
		
		can drawShape: (
			can createPath: [:path |
				path 
					absolute;
					lineTo: 50@0;
					lineTo: 50@50;
					lineTo: 0@50
			])
	
	].

	Display getCanvas drawImage: 	surf asForm  at: 0@0
