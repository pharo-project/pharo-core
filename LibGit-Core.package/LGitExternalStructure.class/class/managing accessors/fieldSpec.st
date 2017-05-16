fieldSpec
	^ LGitExternalStructureFieldParser new  
		parseFields: self fieldsDesc structure: self.
