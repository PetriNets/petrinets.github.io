---
layout: details
title: Pawel's Net
net: {"title":"PetriNet","net":{"places":[{"label":"P0","x":8,"y":2},{"label":"P1","x":19,"y":2},{"label":"P2","x":30,"y":2},{"label":"P3","x":41,"y":2},{"label":"P4","x":8,"y":13},{"label":"P5","x":19,"y":13},{"label":"P6","x":30,"y":13},{"label":"P7","x":41,"y":13}],"transitions":[{"label":"T0","x":2.55,"y":8,"pre":{"P4":1},"post":{"P0":1}},{"label":"T1","x":13.55,"y":8,"pre":{"P0":1,"P5":1},"post":{"P1":1,"P4":1}},{"label":"T2","x":24.55,"y":8,"pre":{"P1":1,"P6":1},"post":{"P2":1,"P5":1}},{"label":"T3","x":35.55,"y":8,"pre":{"P2":1,"P7":1},"post":{"P3":1,"P6":1}},{"label":"T4","x":46.55,"y":8,"pre":{"P3":1},"post":{"P7":1}}],"marking":{"P0":1,"P1":1,"P2":1,"P3":1}}}
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

{"title":"Dining Philosophers","net":{"places":[{"label":"P0","x":10,"y":7},{"label":"P1","x":15,"y":3},{"label":"P2","x":15,"y":12},{"label":"P3","x":17,"y":7},{"label":"P4","x":23,"y":7},{"label":"P5","x":25,"y":3},{"label":"P6","x":30,"y":7},{"label":"P7","x":25,"y":12},{"label":"copy_P0","x":10,"y":23},{"label":"copy_P1","x":15,"y":19},{"label":"copy_P2","x":15,"y":28},{"label":"copy_P3","x":17,"y":23},{"label":"copy_P4","x":23,"y":23},{"label":"copy_P5","x":25,"y":19},{"label":"copy_P6","x":30,"y":23},{"label":"copy_P7","x":25,"y":28},{"label":"P8","x":40,"y":15},{"label":"P9","x":1,"y":15}],"transitions":[{"label":"T0","x":10.55,"y":3,"pre":{"P0":1},"post":{"P1":1,"P9":1}},{"label":"T1","x":10.55,"y":12,"pre":{"P0":1,"P2":1,"P9":1}},{"label":"T2","x":20.55,"y":3,"pre":{"P4":1,"P1":1,"P5":1},"post":{"P3":1}},{"label":"T3","x":20.55,"y":12,"pre":{"P3":1},"post":{"P2":1,"P4":1,"P7":1}},{"label":"T4","x":30.55,"y":3,"pre":{"P6":1},"post":{"P5":1,"P8":1}},{"label":"T5","x":30.55,"y":12,"pre":{"P7":1,"P8":1},"post":{"P6":1}},{"label":"copy_T0","x":10.55,"y":19,"pre":{"copy_P0":1,"P9":1},"post":{"copy_P1":1}},{"label":"copy_T1","x":10.55,"y":28,"pre":{"copy_P0":1,"copy_P2":1},"post":{"P9":1}},{"label":"copy_T2","x":20.55,"y":19,"pre":{"copy_P4":1,"copy_P1":1,"copy_P5":1},"post":{"copy_P3":1}},{"label":"copy_T3","x":20.55,"y":28,"pre":{"copy_P3":1},"post":{"copy_P2":1,"copy_P4":1,"copy_P7":1}},{"label":"copy_T4","x":30.55,"y":19,"pre":{"copy_P6":1,"P8":1},"post":{"copy_P5":1}},{"label":"copy_T5","x":30.55,"y":28,"pre":{"copy_P7":1},"post":{"copy_P6":1,"P8":1}}],"marking":{"P3":1,"copy_P4":1,"P8":1,"P9":1}}}

{"title":"Traffic Lights","net":{"places":[{"label":"P0","x":2,"y":9},{"label":"P1","x":11,"y":9},{"label":"P2","x":19,"y":9},{"label":"P3","x":27,"y":9},{"label":"P4","x":35,"y":9}],"transitions":[{"label":"T0","x":11.55,"y":1,"pre":{"P0":1},"post":{"P2":1,"P1":1}},{"label":"T1","x":27.55,"y":1,"pre":{"P3":1,"P2":1},"post":{"P4":1}},{"label":"T2","x":11.55,"y":17,"pre":{"P2":1,"P1":1},"post":{"P0":1}},{"label":"T3","x":27.55,"y":17,"pre":{"P4":1},"post":{"P3":1,"P2":1}}],"marking":{"P0":1,"P3":1}}}

{"title":"Split-Join","net":{"places":[{"label":"P0","x":1,"y":6},{"label":"P1","x":11,"y":2},{"label":"P2","x":23,"y":2},{"label":"P3","x":33,"y":6},{"label":"P4","x":11,"y":10},{"label":"P5","x":23,"y":10}],"transitions":[{"label":"T0","x":28.55,"y":6,"pre":{"P2":1,"P5":1},"post":{"P3":1}},{"label":"T1","x":6.55,"y":6,"pre":{"P0":1},"post":{"P1":1,"P4":1}},{"label":"T2","x":17.55,"y":2,"pre":{"P1":1},"post":{"P2":1}},{"label":"T3","x":17.55,"y":10,"pre":{"P4":1},"post":{"P5":1}}],"marking":{"P0":1}}}



{"title":"PetriNet","net":{"places":[{"label":"P0","x":8,"y":2},{"label":"P1","x":19,"y":2},{"label":"P2","x":30,"y":2},{"label":"P3","x":41,"y":2},{"label":"P4","x":8,"y":13},{"label":"P5","x":19,"y":13},{"label":"P6","x":30,"y":13},{"label":"P7","x":41,"y":13}],"transitions":[{"label":"T0","x":2.55,"y":8,"pre":{"P4":1},"post":{"P0":1}},{"label":"T1","x":13.55,"y":8,"pre":{"P0":1,"P5":1},"post":{"P1":1,"P4":1}},{"label":"T2","x":24.55,"y":8,"pre":{"P1":1,"P6":1},"post":{"P2":1,"P5":1}},{"label":"T3","x":35.55,"y":8,"pre":{"P2":1,"P7":1},"post":{"P3":1,"P6":1}},{"label":"T4","x":46.55,"y":8,"pre":{"P3":1},"post":{"P7":1}}],"marking":{"P0":1,"P1":1,"P2":1,"P3":1}}}
