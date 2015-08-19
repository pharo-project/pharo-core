redrawTrackPad
	surface drawDuring: [:canvas | 
		 canvas setPaint: imageTrack.
	    canvas drawShape: (0@0 extent: self defaultExtent).
		].