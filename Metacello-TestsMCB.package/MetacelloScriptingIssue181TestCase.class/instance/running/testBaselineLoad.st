testBaselineLoad
  "https://github.com/dalehenrich/metacello-work/issues/181"

  | wc |
  Metacello new
    configuration: 'Issue181';
    version: '0.9.1';
    repository: 'dictionary://Metacello_Configuration_Test_Repository';
    silently;
    load.	"
---
  Issue181 0.9.1
    BaselineOfExternal-dkh.3"
  wc := (GoferPackageReference name: 'BaselineOfExternal') workingCopy.
  self assert: wc ancestry ancestors first name = 'BaselineOfExternal-dkh.3'.
  Metacello new
    configuration: 'Issue181';
    version: '0.9.2';
    repository: 'dictionary://Metacello_Configuration_Test_Repository';
    silently;
    load.	"
---
  Issue181 0.9.2
    BaselineOfExternal-dkh.4"
  wc := (GoferPackageReference name: 'BaselineOfExternal') workingCopy.
  self assert: wc ancestry ancestors first name = 'BaselineOfExternal-dkh.4'