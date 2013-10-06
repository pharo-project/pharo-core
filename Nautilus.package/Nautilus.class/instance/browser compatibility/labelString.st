labelString

	^ self ui
		ifNil: [ 'Nautilus' ]
		ifNotNil: [:UI | UI title ]