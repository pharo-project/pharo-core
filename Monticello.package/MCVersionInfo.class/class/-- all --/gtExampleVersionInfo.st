gtExampleVersionInfo
	<gtExample: 'Metacello version-info'>
	MCWorkingCopy allManagers do: [ :each | 
		each packageName = 'GT-SpotterExtensions-Core' ifTrue: [ 
			^ each versionInfo ] ].
	^ nil