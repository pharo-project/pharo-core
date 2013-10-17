compileMethod: aString

	| method class |
	self preference = self sourceLabel 
		ifFalse: [ 
			textArea flash.
			^ self yourself ].
	self textArea hasUnacceptedEdits: false.
	method := self 
				getMethod: self selectedNode
				ifAbsent: ["use the information from the tree"
					class := self selectedNode getClass.
					nil].
	method ifNotNil: [:m | class := m methodClass].
	class compile: aString.
	self changed: #textToDisplay.