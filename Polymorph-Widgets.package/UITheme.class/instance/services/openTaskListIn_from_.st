openTaskListIn: world from: aKeyboardEvent

	| tasklistMorph |
	tasklistMorph := TaskListMorph from: aKeyboardEvent.
	tasklistMorph openAsIsIn: world.