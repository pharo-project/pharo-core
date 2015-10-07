visitMethodNode: aMethodNode 
	self addMetalinkMethodStyle: aMethodNode.
	super visitMethodNode: aMethodNode.