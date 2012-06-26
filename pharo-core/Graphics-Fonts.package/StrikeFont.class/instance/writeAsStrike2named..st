file in/out
writeAsStrike2named: fileName 
	"Write me onto a file in strike2 format.
	fileName should be of the form: <family name><pointSize>.sf2"
	| file |
	file := FileStream fileNamed: fileName.
	self writeAsStrike2On: file.
	file close