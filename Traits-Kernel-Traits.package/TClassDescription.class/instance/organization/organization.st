organization
	"Answer the instance of ClassOrganizer that represents the organization 
	of the messages of the receiver."

	self basicOrganization ifNil: [
		self basicOrganization: (self isTrait ifTrue: [ClassOrganization new] 
											ifFalse: [ClassOrganization forClass: self]) ].
	"Making sure that subject is set correctly. It should not be necessary."
	self basicOrganization ifNotNil: [ self basicOrganization setSubject: self ].
	^ self basicOrganization