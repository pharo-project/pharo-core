testPackageSupplyingAnswers
	| project versionSpec version pkg string expected |
	project := self project.

	versionSpec := (version := project version: '1.0.7-baseline') spec.
	pkg := version packageNamed: 'Example-Core'.
	string := self conditionResult: pkg printString.
	expected := 'spec 
	name: ''Example-Core'';
	supplyingAnswers: #( #( ''preload'' ''preload answer'' ) #( ''postload'' ''postload answer'' ) );
	preLoadDoIt: #''preloadForSupplyingAnswers'';
	postLoadDoIt: #''postloadForSupplyingAnswers''.'.
	self assert: string = expected.
	self assert: pkg answers = #(#('preload' 'preload answer') #('postload' 'postload answer')).

	self deny: preloadAnswer = 'preload answer'.
	self deny: postloadAnswer = 'postload answer'.
	version load.
	self assert: preloadAnswer = 'preload answer'.
	self assert: postloadAnswer = 'postload answer'.

	pkg := version packageNamed: 'Example-Tests'.
	string := self conditionResult: pkg printString.
	expected := 'spec 
	name: ''Example-Tests'';
	supplyingAnswers: #( #( ''string'' ''preload answer'' ) #( ''symbol'' #''default'' ) #( ''integer'' 1 ) #( ''boolean'' true ) #( ''another boolean'' false ) #( ''character'' $a ) ).'.
	self assert: string = expected.
