acessing
changeSets
	^ self attachments select: [ :each| 
		(each filename endsWith: '.cs') or: [ each filename endsWith: '.st' ]]