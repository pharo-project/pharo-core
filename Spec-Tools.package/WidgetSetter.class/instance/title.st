protocol
title

	^ self model
		ifNil: [ 'Widget Editor' ]
		ifNotNil: [:m | 'Widget Editor: ', m class name ]