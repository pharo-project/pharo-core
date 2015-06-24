formatAsYouReadLabel
	| formatter |
	formatter := RBProgramNode formatterClass.
	^ formatter formatAsYouReadPolicy
		ifTrue: [ ^ 'Format as you read : on' ]
		ifFalse: [ ^ 'Format as you read : off' ]