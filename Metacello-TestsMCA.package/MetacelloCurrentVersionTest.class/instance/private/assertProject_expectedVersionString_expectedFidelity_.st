assertProject: project expectedVersionString: expectedVersionString expectedFidelity: expectedVersionStatus
  | cv versionStatus |
  cv := project currentVersion.
  expectedVersionString == nil
    ifTrue: [ 
      ^ cv == nil
        ifFalse: [ self assert: cv versionStatus == #'somethingLoaded' ] ].	"validate current version"
  self assert: cv = (project version: expectedVersionString).
  self assert: (versionStatus := cv versionStatus) == expectedVersionStatus