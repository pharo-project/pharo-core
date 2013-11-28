classes

	^ classes ifNil: [ | result p |
		p := self patch.
		p
			ifNil: [ #() ] 
			ifNotNil: [ 
				result := p operations 
					collect: [ :each | each koClass ]
					thenSelect: [ :each | each notNil ].
				classes := result asSet asOrderedCollection ] ]