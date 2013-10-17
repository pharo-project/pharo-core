uniqueInstance

	^ UniqueInstance ifNil: [ UniqueInstance := self new ].