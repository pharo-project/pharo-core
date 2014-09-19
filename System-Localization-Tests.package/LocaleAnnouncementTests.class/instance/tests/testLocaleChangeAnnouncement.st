testLocaleChangeAnnouncement
	|current|
	current := Locale current.
	catchedAnnouncement := nil.
	"this should trigger the announcement"
	Locale switchTo: self frenchLocale.
	
	self 
		assert: catchedAnnouncement notNil;
		assert: catchedAnnouncement oldLocale = current;
		assert: catchedAnnouncement newLocale = self frenchLocale