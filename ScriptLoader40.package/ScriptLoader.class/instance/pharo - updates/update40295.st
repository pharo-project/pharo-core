update40295
	"self new update40295"
	self withUpdateLog: '14201 RBAssignmentOnBlockArgumentRule does not catch all assignments to block args
	https://pharo.fogbugz.com/f/cases/14201

13174 Should warn against creating class #NameOfSubclass
	https://pharo.fogbugz.com/f/cases/13174

14207 failing test testBehaviorRespectsPolymorphismWithTraitBehavior
	https://pharo.fogbugz.com/f/cases/14207

14209 add back #allUnimplementedCalls
	https://pharo.fogbugz.com/f/cases/14209

14206 remove empty RBRenameInstanceVariableRefactoringTest
	https://pharo.fogbugz.com/f/cases/14206

7291 Creating a class with empty category should be an error
	https://pharo.fogbugz.com/f/cases/7291'.
	self loadTogether: self script295 merge: false.
	
ScriptLoader new deletePackage: 'Spec-Extensions'.
	self flushCaches.
