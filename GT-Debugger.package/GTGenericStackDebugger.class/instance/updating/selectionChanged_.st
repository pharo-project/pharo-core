selectionChanged: aContext
	
	self class enableStackColoring ifTrue: [  
		UIManager default defer: [
			(self browser paneNamed: #stack) presentations  presentations ifNotEmpty: [ :p | 
				self session interruptedProcess ifNotNil: [ p first update ] ] ] ]