visitMethod: aMethod
	aMethod startSequence withAllSuccessorsDo: [ :sequence |
		sequence accept: self ].
	^ aMethod