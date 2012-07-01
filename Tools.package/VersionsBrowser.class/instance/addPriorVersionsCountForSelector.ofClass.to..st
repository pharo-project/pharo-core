misc
addPriorVersionsCountForSelector: aSelector ofClass: aClass to: aStream
	"Add an annotation detailing the prior versions count.  Specially handled here for the case of a selector no longer in the system, whose prior versions are seen in a versions browser -- in this case, the inherited version of this method will not work."

	(aClass includesSelector: aSelector) ifTrue:
		[^ super addPriorVersionsCountForSelector: aSelector ofClass: aClass to: aStream].

	aStream nextPutAll: 
		((changeList size > 0
			ifTrue:
				[changeList size = 1
					ifTrue:
						['Deleted - one prior version']
					ifFalse:
						['Deleted - ', changeList size printString, ' prior versions']]
			ifFalse:
				['surprisingly, no prior versions']), self annotationSeparator)