initialize

	changeHandler := GLMAsyncTask new
		priority: Processor activePriority - 1;
		doInBackground: [ morph entity: self currentEntity ];
		yourself