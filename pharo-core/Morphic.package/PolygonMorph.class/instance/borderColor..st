access
borderColor: aColor 

	super borderColor: aColor.
	(borderColor isColor and: [borderColor isTranslucentColor]) 
		== (aColor isColor and: [aColor isTranslucentColor]) 
			ifFalse: 
				["Need to recompute fillForm and borderForm
					if translucency of border changes."

				self releaseCachedState]