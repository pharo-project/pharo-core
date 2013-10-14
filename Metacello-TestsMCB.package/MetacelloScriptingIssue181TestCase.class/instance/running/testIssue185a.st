testIssue185a
  "https://github.com/dalehenrich/metacello-work/issues/185"

  | wc |
  Metacello new
    configuration: 'Issue181';
    version: '0.9.1';
    repository: 'dictionary://Metacello_Configuration_Test_Repository';
    silently;
    load.	"
---
  Issue181 0.9.1
    BaselineOfExternal-dkh.3
	   EExternal-Core-dkh.5"
  wc := (GoferPackageReference name: 'External-Core') workingCopy.
  self assert: wc ancestry ancestors first name = 'External-Core-dkh.5'.
  Metacello new
    configuration: 'Issue181';
    version: '0.9.3';
    repository: 'dictionary://Metacello_Configuration_Test_Repository';
    silently;
    load.	"
---
  Issue181 0.9.2
    BaselineOfExternal-dkh.4
      External-Core-dkh.5"
  wc := (GoferPackageReference name: 'External-Core') workingCopy.
  self assert: wc ancestry ancestors first name = 'External-Core-dkh.6'