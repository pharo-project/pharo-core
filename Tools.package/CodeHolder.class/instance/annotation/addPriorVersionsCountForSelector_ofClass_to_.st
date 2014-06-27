addPriorVersionsCountForSelector: aSelector ofClass: aClass to: aStream
	"add an annotation detailing the prior versions count"
	| versionsCount |

	versionsCount := aClass changeRecordsAt: aSelector.
	aStream nextPutAll: 
				((versionsCount > 1
					ifTrue:
						[versionsCount = 2 ifTrue:
							['1 prior version']
							ifFalse:
								[versionsCount printString, ' prior versions']]
					ifFalse:
						['no prior versions']), self annotationSeparator)