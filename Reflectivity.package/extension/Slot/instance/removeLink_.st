removeLink: aMetaLink
	self links remove: aMetaLink.
	self usingMethods do: #removeLink.
	self links ifEmpty: [ self removeProperty: #links ].
	self clearReflectivityAnnotations.