utils
generateCompleteFixList
	"generateCompleteFixList"
	| stream |
	stream := (FileStream newFileNamed: 'changes-log.txt').
	[ stream nextPutAll: ScriptLoader new logStream contents ] ensure: [ stream close ]