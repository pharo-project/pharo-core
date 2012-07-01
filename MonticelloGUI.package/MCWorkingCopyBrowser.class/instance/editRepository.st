actions
editRepository
	| newRepo |
	newRepo := self repository openAndEditTemplateCopy.
	newRepo ifNotNil: [ 
		newRepo class = self repository class
			ifTrue: [self repository copyFrom: newRepo]
			ifFalse: [self inform: 'Must not change repository type!']].
	self repositoryListChanged