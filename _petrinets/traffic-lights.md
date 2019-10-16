---
layout: details
title: Traffic Lights
net: {"title":"TrafficLights","net":
  {"places":[
    {"label":"Green-1","x":3,"y":9},
    {"label":"Red-1","x":11,"y":9},
    {"label":"Queue","x":19,"y":9},
    {"label":"Red-2","x":27,"y":9},
    {"label":"Green-2","x":35,"y":9}]
  ,"transitions":[
    {"label":"To-Red-1","x":11,"y":3,"pre":{"Green-1":1},"post":{"Queue":1,"Red-1":1}},
    {"label":"To-Green-2","x":27,"y":3,"pre":{"Red-2":1,"Queue":1},"post":{"Green-2":1}},
    {"label":"To-Green-1","x":11,"y":15,"pre":{"Queue":1,"Red-1":1},"post":{"Green-1":1}},
    {"label":"To-Red-2","x":27,"y":15,"pre":{"Green-2":1},"post":{"Red-2":1,"Queue":1}}]
  ,"marking":{"Green-1":1,"Red-2":1}
}}
---
If one imagines that the place on the far left and the place on the far right represent green light, then we, at the least, want to ensure that they are never on at the same time. This net represents such a protocol - a construct in which the undesired state is not possible.     
