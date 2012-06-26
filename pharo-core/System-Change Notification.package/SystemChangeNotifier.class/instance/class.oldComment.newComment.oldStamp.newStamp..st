system triggers
class: aClass oldComment: oldComment newComment: newComment oldStamp: oldStamp newStamp: newStamp
	"A class was commented in the system."

	self trigger: (CommentedEvent class: aClass oldComment: oldComment newComment: newComment oldStamp: oldStamp newStamp: newStamp)