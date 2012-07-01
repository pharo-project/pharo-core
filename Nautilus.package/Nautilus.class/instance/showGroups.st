accessing
showGroups

	^ showGroups ifNil: [ showGroups := self shouldOpenOnGroups ]