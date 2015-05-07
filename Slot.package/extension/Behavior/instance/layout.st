layout
	^ layout
		ifNil: [ 
			| superLayout scope |
			superLayout := superclass layout.
			scope := superLayout slotScope extend.
			layout := superLayout class extending: superLayout scope: scope host: self ]