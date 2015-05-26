result

	^ result ifNil: [ result := self hasParentExample
			ifFalse: [ self provider perform: self selector ]
			ifTrue: [ self provider perform: self selector with: parentExample result ] ]