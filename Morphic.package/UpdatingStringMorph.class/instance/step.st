stepping and presenter
step
	| s |
	super step.
	hasFocus ifFalse:
		["update contents, but only if user isn't editing this string"
		s := self readFromTarget.
		s = contents ifFalse:
			[self updateContentsFrom: s]]
