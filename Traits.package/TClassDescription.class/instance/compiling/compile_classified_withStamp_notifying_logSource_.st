compile: text classified: category withStamp: changeStamp notifying: requestor logSource: logSource
 
	| method |

	method := self compiler
		source: text;
		requestor: requestor;
		category: category;
		failBlock:  [ ^nil ];
		compile.
		
	logSource ifTrue: [
		self 
			logMethodSource: (requestor ifNotNil: [ :r | r text ] ifNil: [ text ]) "the requestor text might have been changed by the compiler and may be different thant text argument"
			forMethod: method
			inCategory: category 
			withStamp: changeStamp].
		
	self 
		addAndClassifySelector: method selector 
		withMethod: method 
		inProtocol: category 
		notifying: requestor.
			
	self instanceSide 
		noteCompilationOf: method selector 
		meta: self isClassSide.

	^ method selector