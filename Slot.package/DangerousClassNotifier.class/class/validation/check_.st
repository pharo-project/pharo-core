check: classSymbol

	self enabled ifTrue: 
	[ 	
		(self tooDangerousClasses includes: classSymbol)
			ifTrue: [ self error: classSymbol name , ' cannot be changed using the classbuilder. Use the reflective APi (e.g #addClassVariable:). If you know what you are doing, you can use #disableDuring: of DangerousClassNotifier' ].	"Check if the receiver should not be redefined"

		(self shouldNotBeRedefined: classSymbol)		
			ifTrue: [ self notify: '"' , classSymbol , '" should not be redefined. \Proceed to store over it.' withCRs ].
	].
	^true "Just to keep some tests happy"