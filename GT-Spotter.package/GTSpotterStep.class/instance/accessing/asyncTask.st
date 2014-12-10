asyncTask

	^ asyncTask ifNil: [ asyncTask := GTAsyncTask new ]