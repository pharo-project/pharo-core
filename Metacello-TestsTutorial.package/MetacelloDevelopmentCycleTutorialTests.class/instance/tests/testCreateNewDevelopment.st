testCreateNewDevelopment
	| expected output cl versionSpec report |
	self
		createConfiguration;
		createDevelopment;
		validateAndSave;
		releaseDevelopment;
		createNewDevelopment;
		yourself.
	cl := Smalltalk at: self configurationName.
	expected := self version10ReleaseVersionSpecString.
	versionSpec := (cl project version: '1.0') versionSpec.
	versionSpec timestamp: ''.
	output := versionSpec printString.
	self assert: output = expected.

	expected := self version11DevelopmentVersionSpecString.
	versionSpec := (cl project version: '1.1') versionSpec.
	versionSpec timestamp: ''.
	output := versionSpec printString.
	self assert: output = expected.

	versionSpec := (cl project version: #development) versionSpec.
	versionSpec timestamp: ''.
	output := versionSpec printString.
	self assert: output = expected.
	
	report := MetacelloToolBox compareVersionsIn: cl.
	#(additions modifications removals) do: [:key |
		self assert: (report perform: key) keys size = 0 ].
	self assert: (report configuration) = self configurationName asString.
	self assert: (report from) = '1.0'.
	self assert: (report to) = '1.1'.