drawLara
	surface drawDuring: [:canvas | 
		canvas setPaint: larasPicture .
		canvas drawShape: (laraPosition@0 extent: self defaultExtent).
	].