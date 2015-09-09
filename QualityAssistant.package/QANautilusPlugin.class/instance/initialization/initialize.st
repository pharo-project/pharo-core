initialize

	changeHandler := GLMAsyncTask new
		priority: Processor activePriority - 1;
		doInBackground: [ self morph entity: self currentEntity ];
		yourself