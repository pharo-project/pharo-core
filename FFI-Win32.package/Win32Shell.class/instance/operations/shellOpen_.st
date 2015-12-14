shellOpen: aFileString
	"Opens the file specified by aFileString. The file can be an executable file, a document file, 
	 or a folder."
	| result fileUrlString |
	"@@@@ CHECKME - jrd - Hackity, hack, hack, hack.  Apparently the Win32 url parser doesn't handle %-encoded colons in file paths properly. So we do the conversion ourselves. I'm not sure if the real problem is that we shouldnt be encoding the colons in the first place."
	fileUrlString := (aFileString asLowercase beginsWith: 'file:')
		ifTrue: [(aFileString copyReplaceAll: '%3A' with: ':') copyReplaceAll: '%3a' with: ':' ]
		ifFalse: [aFileString].

	result := self shellExecute: nil 
		lpOperation: 'open'
		lpFile: fileUrlString
		lpParameters: nil
		lpDirectory: nil
		nShowCmd: 1.
 	result <= 32 ifTrue: [self error: 'system error, code:', result printString]