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
						ifFalse: [ (Breakpoint in: context selectedNode) break: specialisation withArguments: #()]]]
		ifTrue: [ Breakpoint removeFrom: context selectedNode]