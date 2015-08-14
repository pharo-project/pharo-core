initializeUpdateTask

	updateTask := GLMAsyncTask new
		doInBackground: [
			critics := entity
				ifNil: [ #() ]
				ifNotNil: [
					entity critics asArray sort: [ :a :b | a title < b title ] ] ];
		onCompleted: [
			listMorph
				updateList;
				deselectAll.
			self removeMorph: progressMorph.
			self addMorphFront: listMorph ];
		yourself