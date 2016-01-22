setTaskAction

	updateTask
		doInBackground: [
			critics := entity
				ifNil: [ #() ]
				ifNotNil: [
					entity externalProperties asArray sort: [ :a :b | a title < b title ] ] ];
		onCompleted: [ self taskCompleted ]