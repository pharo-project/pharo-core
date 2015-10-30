with: anInput
	| dataSource |
	dataSource := (anInput isNotEmpty and: [ anInput anyOne isCollection ])
		ifTrue: [ FTOutlineDataSource items: anInput ]
		ifFalse: [ FTSimpleDataSource elements: anInput ].
	^ self new
		dataSource: dataSource;
		yourself