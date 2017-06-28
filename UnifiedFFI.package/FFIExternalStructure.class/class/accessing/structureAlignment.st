structureAlignment
	externalStructureAlignment ifNil: [ self compileFields ].
	^ externalStructureAlignment