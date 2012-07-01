private
allClassesDo: aBlock
	self systemDictionary allClassesDo: [ :each | aBlock value: each; value: each class ]