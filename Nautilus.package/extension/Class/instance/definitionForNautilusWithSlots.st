definitionForNautilusWithSlots
	"the class definition with a way to specify slots. Shown when the class defines special Slot
	 NOTE: this is just for testing, the final solution will evolve and be cleaner later"
	| aStream poolString|

	poolString := self sharedPoolsString.

	aStream := (String new: 800) writeStream.
	superclass 
		ifNil: [aStream nextPutAll: 'ProtoObject']
		ifNotNil: [aStream nextPutAll: superclass name].
	aStream nextPutAll: self kindOfSubclass;
			store: self name.
	(self hasTraitComposition) ifTrue: [
		aStream cr; tab; nextPutAll: 'uses: ';
			nextPutAll: self traitCompositionString].
	aStream cr; tab; nextPutAll: 'slots: ';
			nextPutAll: self slots asString .
	aStream cr; tab; nextPutAll: 'classVariableNames: ';
			store: self classVariablesString.
	poolString = '' ifFalse: [
		aStream cr; tab; nextPutAll: 'poolDictionaries: ';
			store: poolString].
	aStream cr; tab; nextPutAll: 'category: ';
			store: self category asString.

	superclass ifNil: [ 
		aStream nextPutAll: '.'; cr.
		aStream nextPutAll: self name.
		aStream space; nextPutAll: 'superclass: nil'. ].

	^ aStream contents