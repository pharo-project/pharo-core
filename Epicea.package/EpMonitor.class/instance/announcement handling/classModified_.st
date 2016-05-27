classModified: aClassModifiedAnnouncement

	self addEvent: 
		(EpClassModification
			oldClass: aClassModifiedAnnouncement oldClassDefinition
			newClass: aClassModifiedAnnouncement newClassDefinition)