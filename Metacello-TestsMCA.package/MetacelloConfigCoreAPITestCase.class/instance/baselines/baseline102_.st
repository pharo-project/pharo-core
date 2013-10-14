baseline102: spec
    <version: '1.0.2-baseline'>
    spec
        for: #'common'
        do: [ 
            spec blessing: #'baseline'.
            spec
                preLoadDoIt: #'preloadForCore';
                postLoadDoIt: #'postloadForCore:package:' ]