execute
	| specialisation|
	context hasUnacceptedEdits ifTrue: [ ^context sourceTextArea acceptEdits].
	
	self selectedNodeHasMetalink 
		ifFalse: [ 
			specialisation := self breakpointSelectionMenu.
			specialisation
				ifNotNil: [ 
					specialisation = #when:
						ifTrue: [self breakpointForCondition ]
						ifFalse: [ (Breakpoint inNode: context selectedNode) break: specialisation withArguments: #()]]]
		ifTrue: [ Breakpoint removeAll. ]