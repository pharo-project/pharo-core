version124: spec
    <version: '1.2.4' imports: #('1.2.4-baseline')>
    spec
        for: #'common'
        do: [ 
            spec
                preLoadDoIt: #'preloadForCoreC';
                yourself ]