as yet unclassified
fillCompletionTable: table withRecord: r
	r methodClass ifNotNilDo: [:cls |
		table compiled: r methodSelector in: cls date: r timeStamp]