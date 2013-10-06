selectedClass
	"Answer the class that is currently selected. Answer nil if no selection 
	exists."

	| name envt |
	(name := self selectedClassName) ifNil: [^ nil].
	(envt := self selectedEnvironment) ifNil: [^ nil].
	^ envt at: name