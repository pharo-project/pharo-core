historize: target
	(target = self or: [ target isNil ])
		ifFalse: [ 
			self class history remove: target ifAbsent: [].
			self class history addFirst: target ]