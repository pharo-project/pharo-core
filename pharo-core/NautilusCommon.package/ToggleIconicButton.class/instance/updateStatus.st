private
updateStatus

	self getStatus
		ifTrue: [
			self enabledIcon
				ifNotNil: [:icon |
					 self labelGraphic: icon ]]
		ifFalse: [
			self disabledIcon
				ifNotNil: [:icon | 
					self labelGraphic: icon ]].