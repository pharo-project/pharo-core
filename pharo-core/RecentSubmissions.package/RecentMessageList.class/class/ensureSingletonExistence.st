instance creation
ensureSingletonExistence

	UniqueInstance ifNil: [ UniqueInstance := self basicNew 
														initialize;
														yourself ].