update60509
	"self new update60509"
	self withUpdateLog: '20262 Update Iceberg to 0.5.4
	https://pharo.fogbugz.com/f/cases/20262'.
	self loadTogether: self script60509 merge: false.
	
#('Iceberg-UI' 'Iceberg-Plugin' 'Iceberg-Metacello-Integration' 'Iceberg-Libgit' 'Iceberg' 'BaselineOfIceberg' 'LibGit-Core' 'BaselineOfLibGit') 
do: [ :each | each asPackage removeFromSystem ].
Metacello new
  baseline: 'Iceberg';
  repository: 'github://pharo-vcs/iceberg:v0.5.4';
  load.
(Smalltalk classNamed: #Iceberg) enableMetacelloIntegration: false.
	self flushCaches.
