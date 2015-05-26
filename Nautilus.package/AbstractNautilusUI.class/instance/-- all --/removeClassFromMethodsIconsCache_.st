removeClassFromMethodsIconsCache: aClass

	self methodsIconsCache keysDo: [:method | 
		" for overrides "
		method methodClass = aClass
			ifTrue: [ 
				self removeFromClassesIconsCache: aClass.
				self methodsIconsCache removeKey: method ifAbsent: [ ]]].