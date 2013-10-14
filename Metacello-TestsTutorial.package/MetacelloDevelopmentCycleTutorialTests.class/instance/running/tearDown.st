tearDown
	| aGofer |
	super tearDown.
	aGofer := Gofer new.
	self tearDownPackages: aGofer.
	aGofer references notEmpty ifTrue: [ aGofer metacelloUnload ].
	Smalltalk removeKey: self repositoryName ifAbsent: [  ].
	Smalltalk removeKey: self alternatRepositoryName  ifAbsent: [  ].
	Smalltalk removeKey: #'Metacello_Gofer_Test_Repository' ifAbsent: [].
	Smalltalk removeKey: #'Metacello_Configuration_Test_Repository' ifAbsent: [].
	Smalltalk at: self configurationName ifPresent: [ :cl | cl removeFromSystem ].
	self tempRepositories do: [:repo | MCRepositoryGroup default removeRepository: repo ].
	(self hasPackage: self configurationName asString)
		ifTrue: [ 
			(Gofer new)
				package: self configurationName asString;
				metacelloUnload ].

	MetacelloPlatform current authorName: authorName.