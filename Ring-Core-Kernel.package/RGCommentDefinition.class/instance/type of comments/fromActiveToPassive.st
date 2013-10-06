fromActiveToPassive
	"If the receiver was generated as an active comment, it can be converted to a passive one by reading the data of the real class organization"
	
	self isActive ifTrue: [
		| realClass |
		realClass := self realClass.
		realClass notNil
			ifTrue: [
				self content: realClass organization classComment.
				self stamp: realClass organization commentStamp ].
		self asPassive ]