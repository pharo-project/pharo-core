changeFormatAsYouReadPolicy
	| formatter |
	formatter := RBProgramNode formatterClass new.
	formatter class formatAsYouReadPolicy
		ifTrue: [ formatter class formatAsYouReadPolicy: false ]
		ifFalse: [ 
			formatter class formatAsYouReadPolicy: true.
			self owner model formatSourceCodeInView; clearUserEdits ].
	self updateContents.
	self paragraphProvider changed