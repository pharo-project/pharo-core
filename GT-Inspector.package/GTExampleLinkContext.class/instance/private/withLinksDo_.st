withLinksDo: aBlock
	| returnValue |
	[ self install. returnValue := aBlock value ] 
		ensure: [ self uninstall ].
	^ returnValue