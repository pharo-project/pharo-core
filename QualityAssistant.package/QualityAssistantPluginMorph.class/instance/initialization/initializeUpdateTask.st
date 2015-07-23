initializeUpdateTask

	updateTask := GLMAsyncTask new
		doInBackground: [
			critics := entity
				ifNil: [ #() ]
				ifNotNil: [
					entity cachedCritics asArray sort: [ :a :b | a title < b title ] ] ];
		onCompleted: [
			listMorph
				updateList;
				deselectAll.
			self removeMorph: progressMorph.
			self addMorphFront: listMorph ];
		yourself