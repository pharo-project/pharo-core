dialog
	^ dialog ifNil: [ dialog := self newDialog ]
	