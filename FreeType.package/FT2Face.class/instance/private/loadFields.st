loadFields
	self isValid ifFalse: [ ^ self ].
	
	[ self primLoadFields ] 
	on: FT2Error
	do:[ :e | e crLog "need to do something here, but at least I log it :(" ]