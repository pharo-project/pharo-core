singleton 
	^ Singleton ifNil: [Singleton := self new].
