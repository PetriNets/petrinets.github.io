---
layout: details
title: Pawel's Net
nets:
  default:
    states:
      - { label: "a", x: 10, y: 20}
      - { label: "b", x: 10, y: 140 }
      - { label: "c", x: 115,  y: 140 }
      - { label: "d", x: 115,  y: 20 }
      - { label: "e", x: 210,   y: 20 }
      - { label: "f", x: 315,  y: 20 }
      - { label: "g", x: 210,   y: 140 }
      - { label: "h", x: 315,  y: 140 }
    transitions:
      - { label: "x", x: -40, y: 80,
          post: { a: 1 } ,
          pre:  { b: 1 }
        }
      - { label: "y", x: 160, y: 80,
          pre:  { g: 1, d: 1 },
          post: { e: 1, c: 1 }
        }
      - { label: "z", x: 260, y: 80,
          pre:  {h: 1, e: 1},
          post: {f: 1, g: 1}
        }
      - { label: "q", x: 360, y: 80,
          post: { h: 1 },
          pre:  { f: 1 }
        }
      - { label: "r", x: 60, y: 80,
          pre:  { c: 1, a: 1 },
          post: { d: 1, b: 1 }
        }
    marking: {a: 1, d: 1, e: 1, f: 1}
    scale: 1

---
The study of reachability in Petri nets is expansive and a very important thing to consider to fully understand their computational properties. This net is an example of how in some cases, certain computations scale exponentially as new places are added. In this particular net, for each added bit, the path from the tokens going from the top row of places to the bottom, doubles. You can learn more about it in [Pawel Sobocinski's video](https://www.youtube.com/watch?v=77KwKNSb7uc), which explains open Petri nets. 

### Pawel's Net

<script>addNetByName('default')</script>
