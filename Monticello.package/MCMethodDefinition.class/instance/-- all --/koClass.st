koClass
	self className ifNil: [ ^ nil ] ifNotNil: [ :cname |
		self isExtensionMethod 
		ifTrue:[  ^ KomitClass trackedClass: cname forExtension: self  category]
		ifFalse:[ ^ KomitClass trackedClass: cname ]
		]