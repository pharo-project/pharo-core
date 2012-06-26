accessing
level
		
	(self level2Selectors includes: (self sortingSelector))
		ifTrue: [^2].
	(self level3Selectors includes: (self sortingSelector))
		ifTrue: [^3].
	self error: 'The selector isn''t classified'