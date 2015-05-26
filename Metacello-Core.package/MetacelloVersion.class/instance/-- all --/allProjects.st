allProjects
	| all |
	all := OrderedCollection new.
	self allProjectsDo: [ :each |
		all add: each ].
	^ all