icon caches
removeClassFromMethodsIconsCache: aClass

	self methodsIconsCache keys do: [:method | 
		" for overrides "
		method methodClass = aClass
			ifTrue: [ 
				self removeFromClassesIconsCache: aClass.
				self methodsIconsCache removeKey: method ifAbsent: [ ]]].