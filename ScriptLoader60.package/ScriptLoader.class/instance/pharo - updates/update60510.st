update60510
	"self new update60510"
	self withUpdateLog: '20268 update iceberg v0.5.5
	https://pharo.fogbugz.com/f/cases/20268'.
	self loadTogether: self script60510 merge: false.
	
#('Iceberg-UI' 'Iceberg-Plugin-GitHub' 'Iceberg-Plugin' 'Iceberg-Metacello-Integration' 'Iceberg-Libgit' 'Iceberg' 'BaselineOfIceberg' 'LibGit-Core' 'BaselineOfLibGit') 
do: [ :each | each asPackage removeFromSystem ].
Metacello new
  baseline: 'Iceberg';
  repository: 'github://pharo-vcs/iceberg:v0.5.5';
  load.
(Smalltalk classNamed: #Iceberg) enableMetacelloIntegration: false.
	self flushCaches.
