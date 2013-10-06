initialize 
	| ref |
	super initialize.
	self extent: self defaultExtent.
	self color: self backColor.
	surface := AthensCairoSurface extent: self extent.
	current := 1.
	frame := 0.

	ref := 	'Pharo.png' asFileReference.
	pharoLogo := AthensCairoSurface createFromFile:  ref fullName ifFailed:  [ nil ].

	ref := 'esug-balloon.png' asFileReference.
	esugBallon := AthensCairoSurface createFromFile:  ref fullName ifFailed:  [ nil ].

	
	self startStepping.
	
