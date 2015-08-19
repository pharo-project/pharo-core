osWindow
	"
	self new osWindow
	"
	| attrs  |
	attrs := OSWindowAttributes new.
	"form := self loadTrackPadImage."
	attrs preferableDriver: OSSDL2MultiTouchDriver new;
		extent: self defaultExtent.
		
	window := OSWindow createWithAttributes: attrs.
	"Hackish for Demo"
 
	surface := AthensCairoSurface fromSDLSurface: (window handle handle getWindowSurface).
	self initializeFromSurface.

	window eventHandler: (self createEventHandler).
	attrs preferableDriver registerGlobalListener: window eventHandler.
	self redraw.
	process := [ | d |
	d := Delay forMilliseconds: 20.
	[	d wait.
		self redraw.
	] repeat ] fork.
	