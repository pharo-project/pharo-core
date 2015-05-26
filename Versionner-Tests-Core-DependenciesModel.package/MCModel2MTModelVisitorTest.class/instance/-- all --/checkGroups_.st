checkGroups: project
	| group |
	
	group := project groups at: 1.
	self assert: group notNil.
	self assert:  group name equals: 'default'.
	self assert: (group dependencies hasEqualElements: #('Core' 'Tests')).
	
	group := project groups at: 2.
	self assert: group notNil.
	self assert:  group name equals: 'Core'.
	self assert: (group dependencies hasEqualElements: #('VersionnerTestXML-Parser')).
	
	group := project groups at: 3.
	self assert: group notNil.
	self assert:  group name equals: 'Tests'.
	self assert: (group dependencies hasEqualElements: #('VersionnerTestXML-Tests-Parser')).
