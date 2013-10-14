baseline111: spec
    <version: '1.1.1-baseline'>
    spec
        for: #'common'
        do: [ 
            spec blessing: #'baseline'.
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
            spec group: 'Core' with: #('Example Project').
            spec
                for: #'nested'
                do: [ 
                    spec
                        group: 'Nested' with: #('Example Project');
                        yourself ] ].
    spec
        for: #'extra'
        do: [ 
            spec
                group: 'Extra' with: #('Example Project');
                yourself ]