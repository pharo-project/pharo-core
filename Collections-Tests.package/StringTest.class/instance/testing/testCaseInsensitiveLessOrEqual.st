testCaseInsensitiveLessOrEqual

self assert: ('EEA' caseInsensitiveLessOrEqual: 'fgh').
self deny: ('������������' caseInsensitiveLessOrEqual: '�������').
self assert: ('������������' caseInsensitiveLessOrEqual: '������������').
self deny: ('������' caseInsensitiveLessOrEqual: '�����').
self assert: ('eea' caseInsensitiveLessOrEqual: '���').