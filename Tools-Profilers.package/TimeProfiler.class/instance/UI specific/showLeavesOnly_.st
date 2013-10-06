showLeavesOnly: aBoolean
	self showLeavesOnly ~= aBoolean
		ifTrue: [
			treeMorph treeLineWidth: (aBoolean ifTrue: [0] ifFalse: [1]).
			showLeavesOnly := aBoolean.
			self changed: #showLeavesOnly.
			self changed: #rootNodes]