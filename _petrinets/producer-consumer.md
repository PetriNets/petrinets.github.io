---
layout: details
title: Producer - Consumer
net: {"title":"Producer-Consumer","net":{"places":[{"label":"P0","x":7,"y":1},{"label":"P1","x":7,"y":14},{"label":"P2","x":20,"y":8},{"label":"P3","x":33,"y":1},{"label":"P4","x":33,"y":14}],"transitions":[{"label":"T0","x":1.55,"y":8,"pre":{"P1":1},"post":{"P0":1}},{"label":"T1","x":13.55,"y":8,"pre":{"P0":1},"post":{"P1":1,"P2":1}},{"label":"T2","x":27.55,"y":8,"pre":{"P2":1,"P4":1},"post":{"P3":1}},{"label":"T3","x":39.55,"y":8,"pre":{"P3":1},"post":{"P4":1}}],"marking":{"P0":1,"P4":1}}}
---
This net can be thought of as having a producer unit on the left, and a consumer unit on the right, as the title suggests. The consumer unit needs the resources the producer unit creates in order to do its work. An example of this pattern is the producer as a function generating a data object, and the consumer, a function which takes this object as an input and manipulates it in some way.
