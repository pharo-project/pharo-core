pharo - updates
update20125
	"self new update20125"
	self withUpdateLog: '- Issue 5967:	Use FileSystem for everything (part one). **THANKS** 
camillo for this effort.... 

Gofer-Tests-CamilloBruni.133
Gofer-Core-CamilloBruni.149
RPackage-Core-CamilloBruni.120
Network-MIME-CamilloBruni.45
NetworkTests-CamilloBruni.69
Network-Mail-CamilloBruni.13
Network-URI-CamilloBruni.36
Graphics-Files-CamilloBruni.26
FreeType-CamilloBruni.578'.
	self loadTogether: self script115 merge: false.
	self flushCaches.
