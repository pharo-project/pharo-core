getClass

	self level = 1
		ifTrue: [
			self model level = 2
				ifTrue:[^self item].
			self model level = 3
				ifTrue:[^self error: 'You shouldn''t ask the class of a package']]
		ifFalse: [^self item]