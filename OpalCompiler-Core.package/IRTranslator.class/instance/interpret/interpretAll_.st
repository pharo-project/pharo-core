interpretAll: irSequences
	irSequences withIndexDo: [:seq :i | seq orderNumber: i].
	super interpretAll: irSequences.
