protocol
viewChangesFor: workingCopy
	"View the changes made in the working copy."
	
	| patch |
	'Finding changes' displayProgressFrom: 0 to: 10 during:[:bar|
		bar current: 1.
		patch := workingCopy changesRelativeToRepository: self repository.
		patch isNil ifTrue: [^ self].
		bar current: 3.
		patch isEmpty
			ifTrue: [
				workingCopy modified: false.
				bar current: 10.
				self inform: 'No changes'.
				^ false ]
			ifFalse: [ | window |
				workingCopy modified: true.
				bar current: 5.
				
				window := self
					viewChanges: patch
					for: workingCopy
					from: workingCopy  packageName, ' (', workingCopy ancestry ancestorString, ')'
					to: ('Modified {1}' translated format: {workingCopy description}).
				self receiver openModal: window openDialogWithSpec window.
				^ window result ]]