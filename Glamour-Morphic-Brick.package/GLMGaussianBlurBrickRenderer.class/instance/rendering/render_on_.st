render: aBrick on: aCanvas
	| origin corner height width  poker form formDest r g b a depth destR destG destB destA|
	
	height := aCanvas privateClipRect height.
	width := aCanvas privateClipRect width.
	poker := aCanvas privatePort.
		
	origin := aCanvas origin.
	corner := aCanvas privateClipRect corner.
	
	
	form := aCanvas form copy: aCanvas privateClipRect.
	depth := form depth.
	formDest := Form extent: form extent depth: form depth.
	
	r := Array new: form bits size.
	g := Array new: form bits size.
	b := Array new: form bits size.
	a := Array new: form bits size.
	
	destR := Array new: form bits size.
	destG := Array new: form bits size.
	destB := Array new: form bits size.
	destA := Array new: form bits size.
	
	form bits doWithIndex: [ :each :index | self putChannelValuesFromPixelValue: each depth: depth r: r g: g b: b a: a at: index ].
	
	self gaussBlur: r dest: destR width: form width height: form height radius: 5.
	self gaussBlur: g dest: destG width: form width height: form height radius: 5.
	self gaussBlur: b dest: destB width: form width height: form height radius: 5.
"	self gaussBlur_4: a dest: destA width: form width height: form height radius: 4."
	
	self storeChannelsRed: destR green: destG blue: destB alpha: a in: formDest bits depth: depth.
	
	aCanvas drawImage: formDest at: (aCanvas clipRect origin).
	super render: aBrick on: aCanvas