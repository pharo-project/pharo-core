removeLink: aMetaLink
	self links remove: aMetaLink.
	self links ifEmpty: [ self removeProperty: #links ].
	self clearReflectivityAnnotations.
	self methodNode method removeLink: aMetaLink. 