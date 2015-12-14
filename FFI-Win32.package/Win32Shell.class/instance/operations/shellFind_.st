shellFind: aPathString
	"Initiates a search starting from the specified directory."

	| result |
	result := self shellExecute: nil 
		lpOperation: 'find'
		lpFile: nil
		lpParameters: nil
		lpDirectory: aPathString
		nShowCmd: 1.
	result <= 32 ifTrue: [self error: 'system error, code:', result printString]