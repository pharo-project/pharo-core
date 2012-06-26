instance creation
fromInternal: anInternalAnnouncement
	"create a new announcement from an internal announcement. Copy the variables"
	
	| instance |
	self flag: #ben. "why copy does not work?"
	instance := self new.
	1 to: self allInstVarNames size do:[:i | instance instVarAt: i put: ( anInternalAnnouncement instVarAt: i )].
	^ instance