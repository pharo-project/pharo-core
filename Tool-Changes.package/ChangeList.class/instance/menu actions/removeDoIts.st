removeDoIts
	"Remove doits from the receiver, other than initializes."

	self removeRecordsWhere: 
		[:record :displayString | 
			record type = #doIt and: [(displayString endsWith: 'initialize') not]]