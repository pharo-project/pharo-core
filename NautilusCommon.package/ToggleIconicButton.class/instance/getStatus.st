private
getStatus

	self model 
		ifNotNil: [:mod | 
			self statusSelector
				ifNotNil:[:selector | 
					^ mod perform: selector ]].
	^ true