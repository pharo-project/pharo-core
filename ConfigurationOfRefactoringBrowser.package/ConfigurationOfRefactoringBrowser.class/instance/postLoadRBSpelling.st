baselines
postLoadRBSpelling
	"We want to initialize and download the dictionary file so that tests can be run without internet."
	Smalltalk at: #RBInternalSpellChecker ifPresent: [:cl | cl  new ].