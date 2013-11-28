initialize

	super initialize.
	
	self icon: Smalltalk ui icons dirtyPackageIcon.
	self whenSelectedChanged: [ :aBoolean |
		self ifNotSilentDo: [
			aBoolean
				ifTrue: [ self selectAllChildren ]
				ifFalse: [ self unselectAllChildren ] ] ].
		
	self whenContentChanged: [ :c || childrenNode |
		childrenNode := self getClasses 
			collect: [ :each | KomitClassNode new
				content: each;
				yourself ].
		self children: [ childrenNode ] ] 
		