accessing
default
	^Default ifNil: [Default := OSPlatform current clipboardClass new].