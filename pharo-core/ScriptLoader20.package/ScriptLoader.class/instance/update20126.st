pharo - updates
update20126
	"self new update20126"
	self withUpdateLog: '- Issue 5967:	Use FileSystem for everything (part two). **THANKS** 
camillo for this effort.... 

Multilingual-TextConversion-CamilloBruni.33
Multilingual-Languages-CamilloBruni.18
Multilingual-Tests-CamilloBruni.13
System-Changes-CamilloBruni.140
FileSystem-Memory-CamilloBruni.7
FileSystem-Disk-CamilloBruni.13
FileSystem-Core-CamilloBruni.13
FileSystem-Tests-Core-CamilloBruni.9 
Graphics-Primitives-CamilloBruni.83
Graphics-Fonts-CamilloBruni.56
Graphics-Transformations-CamilloBruni.6
Graphics-Text-CamilloBruni.33
Graphics-Tests-CamilloBruni.24
Graphics-Resources-CamilloBruni.15
Graphics-Display Objects-CamilloBruni.77'.
	self loadTogether: self script116 merge: false.
	self flushCaches.
