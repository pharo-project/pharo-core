testWarningDuringLoad
  [ 
  | producedWarning externalCoreClass |
  Transcript
    cr;
    show: 'MetacelloScriptingWarningTestCase>>testWarningDuringLoad [0]: '.
  Metacello new
    configuration: 'Issue181';
    version: '0.9.1';
    repository: 'dictionary://Metacello_Configuration_Test_Repository';
    silently;
    load.
  producedWarning := false.
  Smalltalk
    at: #'SystemChangeNotifier'
    ifPresent: [ :cl | 
      Transcript
        cr;
        show:
            'MetacelloScriptingWarningTestCase>>testWarningDuringLoad [1]: '
                , cl uniqueInstance silenceLevel printString ].
  externalCoreClass := Smalltalk
    at: #'ExternalCore'
    ifAbsent: [ 
      Transcript
        cr;
        show: 'Missing class: ExternalCore'.
      MCWorkingCopy allManagers
        do: [ :wc | 
          (wc packageName beginsWith: 'External')
            ifTrue: [ 
              Transcript
                cr;
                show:
                    'MetacelloScriptingWarningTestCase>>testWarningDuringLoad [6]: '
                        , wc description ] ].
      self assert: false ].
  Transcript
    cr;
    show: 'MetacelloScriptingWarningTestCase>>testWarningDuringLoad [2]: '.
  self deny: (externalCoreClass selectors includes: #'forceWarning').
  externalCoreClass compile: 'forceWarning ^self'.	"dirty the package"
  Transcript
    cr;
    show: 'MetacelloScriptingWarningTestCase>>testWarningDuringLoad [3]: '.
  self assert: (externalCoreClass selectors includes: #'forceWarning').
  Transcript
    cr;
    show: 'MetacelloScriptingWarningTestCase>>testWarningDuringLoad [4]: '.
  Metacello new
    configuration: 'Issue181';
    version: '0.9.3';
    repository: 'dictionary://Metacello_Configuration_Test_Repository';
    silently;
    onWarning: [ :ex | 
          Transcript
            cr;
            show:
                'MetacelloScriptingWarningTestCase>>testWarningDuringLoad [5]: '
                    , ex description.
          producedWarning := true.
          ex resume ];
    load.
  Transcript
    cr;
    show: 'MetacelloScriptingWarningTestCase>>testWarningDuringLoad [6]: '.
  self assert: producedWarning ]
    on: Error
    do: [ :ex | 
      Transcript
        cr;
        show:
            'MetacelloScriptingWarningTestCase>>testWarningDuringLoad [7]: '
                , ex description ]