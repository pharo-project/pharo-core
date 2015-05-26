expungeEmptyClassChangeEntries

	changeRecords keysAndValuesRemove:
		[:className :classRecord | classRecord hasNoChanges]