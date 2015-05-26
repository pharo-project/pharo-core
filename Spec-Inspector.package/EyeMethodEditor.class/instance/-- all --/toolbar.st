toolbar
	^ toolbar ifNil: [ 
		toolbar := self instantiate: MethodToolbar. ]