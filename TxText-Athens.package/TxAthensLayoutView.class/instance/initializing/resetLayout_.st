resetLayout: startPosition
	| pos |
	
	"Always align with line start"
	self layoutIsAboutToReset.
	
	pos := startPosition asPosition moveToLineStart.	

	layout := TxAthensLayout new view: self.
	layout initializePosition: pos strategy: layoutStrategy.
	
	"Keep scanning until it's enough to fill the view"
	[  		
		extent y + offset y > layout height
	] whileTrue: [ 
		"or nothing more to scan"

		layout extendOneLineDown ifFalse: [ ^ self announceViewChanged ] .	
	].

	self announceViewChanged