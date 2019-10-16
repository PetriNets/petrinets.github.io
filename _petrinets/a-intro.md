---
layout: details
title: Intro
net: {
  "title":"Intro",
  "net":{
    "places":[
      {"label":"Place A","x":0,"y":0},
      {"label":"Place B","x":40,"y":0},
      {"label":"Place C","x":40,"y":20},
      {"label":"Place D","x":0,"y":20}
    ],
    "transitions":[
      {"label":"Transition 1","x":20,"y":0,"pre":{"Place A":1},"post":{"Place B":1}},
      {"label":"Transition 2","x":40,"y":10,"pre":{"Place B":1},"post":{"Place C":1}},
      {"label":"Transition 3","x":20,"y":20,"pre":{"Place C":1},"post":{"Place D":1}},
      {"label":"Transition 4","x":0,"y":10,"pre":{"Place D":1},"post":{"Place A":1}}
    ],
    "marking":{"Place A":1, "Place B": 1}
  }
}
---
A *Petri net* is composed of *places*, *transitions* and *arcs*. Any place
contains a given number of tokens, which represent resources. Transitions are connected to places
through the arcs, and can turn resources into other resources: A transition can fire, consuming tokens
living in places connected to its input, and producing tokens living in places connected to its output.

* Places are represented by circles;
* Tokens are represented by black dots in each circle;
* Transitions are represented by rectangles; transitions that can fire are colored green.

The diagram is interactive, try clicking on the enabled (green) transitions and see what happens.