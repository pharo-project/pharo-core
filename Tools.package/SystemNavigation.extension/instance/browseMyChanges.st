*Tools-Browser
browseMyChanges
	"Browse only the changes (in the changes file) by the current author."

	^ self browseAllSelect: [ :method |
		method fileIndex > 1 "only look at changes file"
			and: [ method timeStamp beginsWith: Author fullName ]]