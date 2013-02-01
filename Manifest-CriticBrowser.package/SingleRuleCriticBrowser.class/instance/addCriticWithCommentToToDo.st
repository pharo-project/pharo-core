menu
addCriticWithCommentToToDo

	| aCritic |
	aCritic := criticsModel selectedItem.
	aCritic isNil 
		ifTrue: [^ self]. 
	self addCriticToToDo.
	CommentToDoWindow openOnCritic: aCritic onRule: rule. 
	
	