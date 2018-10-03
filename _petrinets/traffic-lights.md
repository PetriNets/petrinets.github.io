---
layout: details
title: Traffic Lights
net: {"title":"Traffic Lights","net":{"places":[{"label":"P0","x":2,"y":9},{"label":"P1","x":11,"y":9},{"label":"P2","x":19,"y":9},{"label":"P3","x":27,"y":9},{"label":"P4","x":35,"y":9}],"transitions":[{"label":"T0","x":11.55,"y":1,"pre":{"P0":1},"post":{"P2":1,"P1":1}},{"label":"T1","x":27.55,"y":1,"pre":{"P3":1,"P2":1},"post":{"P4":1}},{"label":"T2","x":11.55,"y":17,"pre":{"P2":1,"P1":1},"post":{"P0":1}},{"label":"T3","x":27.55,"y":17,"pre":{"P4":1},"post":{"P3":1,"P2":1}}],"marking":{"P0":1,"P3":1}}}
---
If one imagines that the place on the far left and the place on the far right represent green light, then we, at the least, want to ensure that they are never on at the same time. This net represents such a protocol - a construct in which the undesired state is not possible.     
