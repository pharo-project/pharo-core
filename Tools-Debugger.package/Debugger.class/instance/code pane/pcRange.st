pcRange
	"Answer the indices in the source code for the method corresponding to 
	the selected context's program counter value."

	(selectingPC and: [contextStackIndex ~= 0]) ifFalse:
		[^1 to: 0].
	self selectedContext isDead ifTrue:
		[^1 to: 0].
	^self selectedContext debuggerMap
		rangeForPC: self selectedContext pc
		contextIsActiveContext: contextStackIndex = 1