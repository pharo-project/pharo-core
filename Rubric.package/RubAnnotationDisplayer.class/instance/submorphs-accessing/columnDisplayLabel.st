columnDisplayLabel
	^ self paragraphProvider columnRuler 
		ifNil: [ '+C' ]
		ifNotNil: [ 'C' ]