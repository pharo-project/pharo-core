annotation
addPriorVersionsCountForSelector: aSelector ofClass: aClass to: aStream
	"Add an annotation detailing the prior versions count.  Specially handled here for the case of a selector no longer in the system, whose prior version is pointed to by the lost-method pointer in the change held on to by the changeset"

	(aClass includesSelector: aSelector) ifTrue:
		[^ super addPriorVersionsCountForSelector: aSelector ofClass: aClass to: aStream].
	aStream nextPutAll:
		((myChangeSet methodInfoFromRemoval: {aClass name. aSelector})
			ifNil:
				['no prior versions']
			ifNotNil:
				['version(s) retrievable here']), self annotationSeparator