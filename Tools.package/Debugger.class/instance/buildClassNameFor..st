private
buildClassNameFor: aString
        "shrink the name shown in the debugger "
        
        ^ ((aString trimBoth occurrencesOf: (Character space)) < 2)
                ifTrue: [ aString ]
                ifFalse: [ 'Block in ', (aString subStrings: ' ') last ]