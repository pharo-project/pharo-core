addFirstVersion

	| systemVersion date association |
	systemVersion := SystemVersion new date: '1 January 1901'.
	date := DateAndTime new.
	association := Association key: systemVersion value: date.
	self versionsHistoryList add: association