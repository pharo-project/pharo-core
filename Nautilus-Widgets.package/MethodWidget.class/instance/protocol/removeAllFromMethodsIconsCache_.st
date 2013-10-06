removeAllFromMethodsIconsCache: aMethod

	self methodsIconsCache keys do: [:method | 
		" for overrides "
		method selector = aMethod selector
			ifTrue: [ MethodsIconsCache removeKey: method ifAbsent: [ ]]].