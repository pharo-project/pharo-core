as yet unclassified
checkVersion

	"exclude basic functions, otherwise we enter an endless chicken and egg loop"
	minorVersion = 0 ifTrue:  [ ^ self ].
		
	self assert: (NBInterpreterProxy majorVersion = majorVersion
		and: [ NBInterpreterProxy minorVersion >= minorVersion]).
