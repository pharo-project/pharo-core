accessing
directory
	directory ifNil:
		[directory := 'mctest' asFileReference.
		directory ensureDirectory].
	^ directory