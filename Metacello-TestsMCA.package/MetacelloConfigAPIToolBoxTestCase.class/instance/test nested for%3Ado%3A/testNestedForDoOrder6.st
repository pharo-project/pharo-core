testNestedForDoOrder6

	| project version string expected |
	project := self projectWith: #(#'level1_1' #'level2_1' #'level2_2' #'level3_2').
	version := project version: '1.3.1-baseline'.
	string := version spec printString.
	expected := 'spec blessing: #''baseline''.
spec 
	package: ''Example-Core'' with: [
		spec repository: ''http://www.example.com/1''. ];
	package: ''Example-Core'' with: [
		spec repository: ''http://www.example.com/2''. ];
	package: ''Example-Core'' with: [
		spec repository: ''http://www.example.com/3''. ];
	package: ''Example-Core'' with: [
		spec repository: ''http://www.example.com/4''. ];
	package: ''Example-Core'' with: [
		spec repository: ''http://www.example.com/6''. ];
	package: ''Example-Core'' with: [
		spec repository: ''http://www.example.com/7''. ].'.
	self assert: string = expected.
	
