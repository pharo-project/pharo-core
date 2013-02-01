menu
addCriticWithCommentToFalsePositive
	
	| aCritic |
	aCritic := criticsModel selectedItem.
	
	aCritic isNil 
		ifTrue: [^ self]. 
	
	self addCriticToFalsePositive: aCritic.
	self  updateList.
	CommentFalsePositiveWindow openOnCritic: aCritic onRule: rule. 

	
	