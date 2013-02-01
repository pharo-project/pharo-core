accessing
cleanupInvalidSessions
	sessions keysAndValuesRemove: [ :key :value | value isValid not ]