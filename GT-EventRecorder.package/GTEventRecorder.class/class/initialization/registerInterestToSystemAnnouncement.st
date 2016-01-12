registerInterestToSystemAnnouncement
	<systemEventRegistration>
	uniqueInstance ifNil: [ ^ self ].
	SystemAnnouncer uniqueInstance 
		unsubscribe: uniqueInstance;
		when: PrivacyChangedAnnoucement
			send: #privacyChanged 
			to: uniqueInstance.