removeLink: aMetaLink
	self usingMethods do: #removeLink.
	self links remove: aMetaLink.
	self links ifEmpty: [ self removeProperty: #links ].
	self clearReflectivityAnnotations.