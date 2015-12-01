activate
	"Initialize a delivery process if permitted and necessary."
	^ mutex critical: [ 
			self hasPermission ifFalse: [ ^ self ].
			self isInactive ifTrue: [ self initializeProcess ].
			process ]