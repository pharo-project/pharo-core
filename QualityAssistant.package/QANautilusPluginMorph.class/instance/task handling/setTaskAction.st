setTaskAction

	updateTask
		doInBackground: [
			critics := entity
				ifNil: [ #() ]
				ifNotNil: [
					entity critics asArray sort: [ :a :b | a title < b title ] ] ];
		onCompleted: [ self taskCompleted ]