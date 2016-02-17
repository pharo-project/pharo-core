testFindBetweenSubstrings
 
self assert: ('ιθΰ τόφίδσ ρνα' findBetweenSubstrings: #(' ')) asArray = #('ιθΰ' 'τόφίδσ' 'ρνα').
self assert: ('ieaoftaaka' findBetweenSubstrings: #($a)) asArray = #('ie' 'oft' 'k').
self assert: ('this is an issue is it not' findBetweenSubstrings: #('is' 'not')) asArray 
                                               = #('th' ' ' ' an ' 'sue ' ' it ').