asyncTaskUniqueInstance

	^ asyncTask ifNil: [ asyncTask := GLMAsyncTask new ]