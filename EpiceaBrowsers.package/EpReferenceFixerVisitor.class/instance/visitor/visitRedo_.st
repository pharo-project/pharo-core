visitRedo: aRedoEvent
	^ aRedoEvent copyWithEntryReferences: referencesMap values.