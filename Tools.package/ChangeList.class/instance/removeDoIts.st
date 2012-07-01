menu actions
removeDoIts
	"Remove doits from the receiver, other than initializes. 1/26/96 sw"

	self removeRecordsWhere: 
		[:record :displayString | 
			record type = #doIt and: [(displayString endsWith: 'initialize') not]]