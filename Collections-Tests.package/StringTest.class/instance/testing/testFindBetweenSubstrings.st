testFindBetweenSubstrings
 
self assert: ('��� ������ ���' findBetweenSubstrings: #(' ')) asArray = #('���' '������' '���').
self assert: ('ieaoftaaka' findBetweenSubstrings: #($a)) asArray = #('ie' 'oft' 'k').
self assert: ('this is an issue is it not' findBetweenSubstrings: #('is' 'not')) asArray 
                                               = #('th' ' ' ' an ' 'sue ' ' it ').