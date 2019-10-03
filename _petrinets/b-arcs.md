---
layout: details
title: Arcs
net: {
  "title":"Arcs",
  "net":{
    "places":[{"label":"Storage","x":20,"y":10},{"label":"CustomerA","x":40,"y":0},{"label":"CustomerB","x":40,"y":20}],
    "transitions":[
      {"label":"Create","x":10,"y":10,"pre":{},"post":{"Storage":1}},
      {"label":"Distribute","x":30,"y":10,"pre":{"Storage":2},"post":{"CustomerA":1,"CustomerB":1}},
      {"label":"ConsumeA","x":50,"y":0,"pre":{"CustomerA":1},"post":{}},
      {"label":"ConsumeB","x":50,"y":20,"pre":{"CustomerB":1},"post":{}}],
    "marking":{}
  }
}
---
An arc going from a *place* to a *transition* represents the transition *input*; the
number alongside the arc signifies the number of *consumed* tokens.

An arc going from a *transition* to a *place* represents the transition *output*; the
number alongside the arc signifies the number of *produced* tokens.

A transition can have any number of input arcs and any number of output arcs, including zero.

A Petri net should be thought of as representing some sort of system. Tokens are resources, and places
are containers that hold resources of a given type. Transitions are processes that convert resources from
one type to another. The numbers alongside the arcs identify how many resources of some kind a process needs to
be executed, and how many resources of some other kind will be produced when the process finishes.