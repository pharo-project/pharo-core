testPackageIncludes
	| project versionSpec version pkg string expected |
	project := self project.

	versionSpec := (version := project version: '1.0.9-baseline') spec.
	pkg := version packageNamed: 'Example-Core'.
	string := pkg printString.
	expected := 'spec name: ''Example-Core'''.
	self assert: string = expected.
	pkg := version packageNamed: 'Example-Tests'.
	string := pkg printString.
	expected := 'spec 
	name: ''Example-Tests'';
	includes: #(''Example-Core'' ).'.
	self assert: string = expected
