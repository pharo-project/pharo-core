spotterImplementorsFor: aStep
    <spotterOrder: 30>
    | processor |
    processor := aStep listProcessor.
    processor 
        title: 'Implementors';
        filter: [ :originalQuery :stream |
                | aCollection query |
                aCollection := OrderedCollection  new.
                query := originalQuery trimBoth.
                SystemNavigation default allBehaviorsDo: [:class | 
                    class selectorsDo:[:selector | 
                        (selector includesSubstring: query)
                        ifTrue: [
                            | method |
                            method := class>>selector.
                            aCollection add: method.
                            aCollection size > 5 ifFalse: [ 
                                stream addObject: method inProcessor: processor ]]]].
                aCollection ].
    ^ processor