as yet unclassified
removeRepository: aRepository
	repositories remove: aRepository ifAbsent: [].
	self changed: (Array with: #removed with: aRepository)