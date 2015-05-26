fileEntriesDo: aBlock
	aBlock value: self organization.
	aBlock value: self theMetaClass organization.
	aBlock value: (ClassCommentEntry class: self).
	aBlock value: (ClassDefinitionEntry class: self).
	aBlock value: (ResourcesEntry on: self)