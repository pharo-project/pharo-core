helpers
useTimeZone: abbreviation during: aBlock

	| timeZone |
	timeZone := TimeZone abbreviated: abbreviation.
	self restoreLocalTimeZoneAfter: [ aBlock cull: timeZone ].