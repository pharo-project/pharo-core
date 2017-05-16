representationType
	^ representationType ifNil: [ representationType := self defaultRepresentationType ]