shellExplore: aPathString
	"Explores the folder specified by aPathString"

	| result |
	result := self shellExecute: nil 
		lpOperation: 'explore'
		lpFile: aPathString
		lpParameters: nil
		lpDirectory: nil
		nShowCmd: 1.
	result <= 32 ifTrue: [self error: 'system error, code:', result printString]