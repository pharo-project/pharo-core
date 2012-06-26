I have a warningLimit ( 350 by default ) and an alertLimit ( 2* warningLimit by default ), and the number of characters of the text displayed is counted ( without space, tabs, cr etc).

If my text size is below the warning limit, the background is white ( or the default color ), if it is between warningLimit and alertLimit, the background turns more and more yellow, and if it's above the alertLimit, the background turns orange :)

Test it with: 

self example