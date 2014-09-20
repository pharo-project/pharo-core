fromInternal: anInternalAnnouncement
	"create a new announcement from an internal announcement. Copy the variables"
	
	| instance |
	self deprecated: 'This method is not sent in the image and deprecated for Pharo 4'.
	
	self flag: #ben. "why copy does not work?"
	instance := self new.
	1 to: self allInstVarNames size do:[:i | instance instVarAt: i put: ( anInternalAnnouncement instVarAt: i )].
	^ instance