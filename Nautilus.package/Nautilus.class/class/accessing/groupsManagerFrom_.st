groupsManagerFrom: anInstance
	groups ifNil: [ groups := WeakArray new: 1 ].
	(groups first) ifNil: [ 
		groups 
			at: 1 put:  
			(self buildGroupManagerFor: anInstance) ].
	^ groups first.