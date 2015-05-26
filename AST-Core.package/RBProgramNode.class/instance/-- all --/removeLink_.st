removeLink: aMetaLink
	self links remove: aMetaLink.
	self links ifEmpty: [ self removeProperty: #links ].
	self methodNode method removeLink. 