baseline201: spec
    <version: '2.0.1-baseline'>
    spec
        for: #'common'
        do: [ 
            spec blessing: #'baseline'.
            spec
                preLoadDoIt: #'preloadForCore';
                postLoadDoIt: #'postloadForCore:package:'.
            spec
                project: 'Example Project'
                    with: [ 
                            spec
                                className: 'ConfigurationOfExampleProject';
                                versionString: '1.0-baseline';
                                preLoadDoIt: #'preloadForProject';
                                postLoadDoIt: #'postloadForProject';
                                loads: #('core');
                                yourself ];
                yourself.
            spec group: 'Core' with: #('Example Project') ].
    spec
        for: #'outer'
        do: [ 
            spec
                preLoadDoIt: nil;
                postLoadDoIt: nil ]