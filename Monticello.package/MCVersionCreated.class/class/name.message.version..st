instance creation
name: aName message: aString version: aMCVersion

	^ self new
			name: aName;
			nameString: aString;
			version: aMCVersion;
			yourself