shadowForm
	"Return a 1-bit shadow of my submorphs.  Assumes submorphs is not empty"
	| bnds canvas |
	
	"Usually there is one submorph, if that is the case we delegate to it for optimizing it"
	submorphs size = 1
		ifTrue: [ ^ submorphs first shadowForm ]. 
	
	bnds := Rectangle merging: (submorphs collect: [:m | m fullBounds]).
	canvas := (Display defaultCanvasClass extent: bnds extent depth: 1) 
		asShadowDrawingCanvas: Color black.
	canvas translateBy: bnds topLeft negated
		during:[:tempCanvas| self drawSubmorphsOn: tempCanvas].
	^ canvas form offset: bnds topLeft