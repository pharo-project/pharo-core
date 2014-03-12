childrenForObject: anObject
	self flag: 'Minor Ugliness to filter out the self and instavr node'.
	^ (EyeInspector inspector: anObject) elements
		reject: [ :element | (element isKindOf: SelfEyeElement) or: [ element isKindOf: AllInstVarsEyeElement ] ]