performMenuActionWith: aMenuItem

	self enabled ifFalse: [ ^ self ].
	action value cull: aMenuItem