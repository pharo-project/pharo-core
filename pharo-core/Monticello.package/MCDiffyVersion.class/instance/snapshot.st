as yet unclassified
snapshot
	^ snapshot ifNil: [snapshot := MCPatcher apply: patch to: self baseSnapshot]