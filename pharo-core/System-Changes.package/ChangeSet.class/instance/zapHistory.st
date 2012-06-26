initialization
zapHistory 
	"Much stronger than trimHistory, but it should still leave the changeSet in good shape.
	Must not be done on revertable changeSets
		ChangeSet allInstancesDo: [:cs | cs zapHistory]."

	changeRecords do: [:chgRecord | chgRecord zapHistory]