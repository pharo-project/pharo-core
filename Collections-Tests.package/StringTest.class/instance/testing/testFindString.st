testFindString

self assert: ('������������' findString: '��') = 0.
self assert: ('������������' findString: '��') = 1.
self assert: ('salkjsdlkgfee' findString: 'EE') = 0.
self assert: ('salkjsdlkgfee' findString: 'ee') = 12.
self assert: (' ' findString: '') = 0.