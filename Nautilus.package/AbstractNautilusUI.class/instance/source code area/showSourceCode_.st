showSourceCode: anAnnouncement
	| formatter |
	formatter := RBProgramNode formatterClass.
	self sourceTextModel setText: self sourceCode.
	formatter formatAsYouReadPolicy
		ifTrue: [ 
			self sourceTextModel
				formatSourceCodeInView;
				hasUnacceptedEdits: false ]