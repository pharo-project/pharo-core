accessing
assignmentOperator
	^ (self assignmentPosition notNil and: [ self source notNil and: [ (self source at: self assignmentPosition ifAbsent: [ nil ]) = $_ ] ])
		ifTrue: [ '_' ]
		ifFalse: [ ':=' ]