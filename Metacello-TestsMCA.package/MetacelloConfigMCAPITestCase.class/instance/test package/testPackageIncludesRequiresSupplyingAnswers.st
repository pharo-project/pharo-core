testPackageIncludesRequiresSupplyingAnswers
	| project versionSpec version pkg string expected |
	project := self project.

	versionSpec := (version := project version: '1.1.0-baseline') spec.
	pkg := version packageNamed: 'Example-Test1'.
	string := pkg printString.
	expected := 'spec 
	name: ''Example-Test1'';
	requires: #(''Example-Base'' );
	includes: #(''Example-Core'' ).'.
	self assert: string = expected.

	pkg := version packageNamed: 'Example-Test2'.
	string := pkg printString.
	expected := 'spec 
	name: ''Example-Test2'';
	includes: #(''Example-Core'' );
	supplyingAnswers: #( #( ''captionMatch'' ''answer'' ) ).'.
	self assert: string = expected.

	pkg := version packageNamed: 'Example-Test3'.
	string := pkg printString.
	expected := 'spec 
	name: ''Example-Test3'';
	requires: #(''Example-Base'' );
	supplyingAnswers: #( #( ''captionMatch'' ''answer'' ) ).'.
	self assert: string = expected.

	pkg := version packageNamed: 'Example-Test4'.
	string := pkg printString.
	expected := 'spec 
	name: ''Example-Test4'';
	requires: #(''Example-Base'' );
	includes: #(''Example-Core'' );
	supplyingAnswers: #( #( ''captionMatch'' ''answer'' ) ).'.
	self assert: string = expected.
