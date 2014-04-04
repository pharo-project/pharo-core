update30813
	"self new update30813"
	self withUpdateLog: '13114 Broken PharoTheme
	https://pharo.fogbugz.com/f/cases/13114

12966 FileLocator does not support adding extension with ,
	https://pharo.fogbugz.com/f/cases/12966

13151 Fix side bar buttons
	https://pharo.fogbugz.com/f/cases/13151

'.
	self loadTogether: self script466 merge: false.
	(Smalltalk ui icons instVarNamed: #icons)
    removeKey: #'instVarsSelectedIcon' ifAbsent: [];
    removeKey: #'instVarsUnselectedIcon' ifAbsent: [];
    removeKey: #'instVarsPressedIcon' ifAbsent: [];
    removeKey: #'sourceSelectedIcon' ifAbsent: [];
    removeKey: #'sourceUnselectedIcon' ifAbsent: [];
    removeKey: #'sourcePressedIcon' ifAbsent: [];
    removeKey: #'byteCodeSelectedIcon' ifAbsent: [];
    removeKey: #'byteCodeUnselectedIcon' ifAbsent: [];
    removeKey: #'byteCodePressedIcon' ifAbsent: [];
    removeKey: #'classVarsSelectedIcon' ifAbsent: [];
    removeKey: #'classVarsUnselectedIcon' ifAbsent: [];
    removeKey: #'classVarsPressedIcon' ifAbsent: [];
    yourself.
	self flushCaches.
