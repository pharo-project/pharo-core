relevantProcessorsFor: aQueryString do: aBlock
	aQueryString substrings 
		detect: [ :each | each beginsWith: '#' ]
		ifFound: [ :categoryQuery | 
			self processors 
				select: [ :each | each title beginsWith: categoryQuery allButFirst ]
				thenDo: [ :processor | 
					processor 
						filter: (aQueryString copyReplaceAll: categoryQuery with: '') 
						on: self stream ] ]
		ifNone: [ 
			self processors do: [ :processor | 
				processor 
					filter: aQueryString 
					on: self stream ]]