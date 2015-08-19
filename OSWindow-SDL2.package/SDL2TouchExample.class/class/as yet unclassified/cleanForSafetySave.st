cleanForSafetySave
	self allInstancesDo: [ :each | [ each destroy ] on: Error do:[] ].