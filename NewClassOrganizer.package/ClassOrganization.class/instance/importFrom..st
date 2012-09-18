importing
importFrom: aClassOrganizer 
	
	organizedClass := aClassOrganizer subject.
	self comment: aClassOrganizer classComment.
	self commentStamp: aClassOrganizer commentStamp.
	
	protocolOrganizer := (ProtocolOrganizer importFrom: aClassOrganizer)