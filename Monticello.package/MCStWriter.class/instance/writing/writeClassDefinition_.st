writeClassDefinition: definition
	self chunkContents: [:s | definition printDefinitionOn: s].