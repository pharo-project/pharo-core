groupsManagerFrom: anInstance

	^ groups ifNil: [ groups := self buildGroupManagerFor: anInstance]