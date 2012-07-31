testing
handlesMouseOver: evt
	^(self existsSubscriptionsFor: #mouseEnter)
		or: [ self existsSubscriptionsFor: #mouseLeave ]