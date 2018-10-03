---
layout: details
title: Split - Join
net: {"title":"Split-Join","net":{"places":[{"label":"P0","x":1,"y":6},{"label":"P1","x":11,"y":2},{"label":"P2","x":23,"y":2},{"label":"P3","x":33,"y":6},{"label":"P4","x":11,"y":10},{"label":"P5","x":23,"y":10}],"transitions":[{"label":"T0","x":28.55,"y":6,"pre":{"P2":1,"P5":1},"post":{"P3":1}},{"label":"T1","x":6.55,"y":6,"pre":{"P0":1},"post":{"P1":1,"P4":1}},{"label":"T2","x":17.55,"y":2,"pre":{"P1":1},"post":{"P2":1}},{"label":"T3","x":17.55,"y":10,"pre":{"P4":1},"post":{"P5":1}}],"marking":{"P0":1}}}
nets:
  default:
    states:
      - { label: 'a',  y: 60, x: 20}
      - { label: 'b0', y: 30, x: 100}
      - { label: 'b1', y: 90, x: 100}
      - { label: 'd0', y: 30, x: 180}
      - { label: 'd1', y: 90, x: 180}
      - { label: 'c',  y: 60, x: 260}
    transitions:
      - {label: 'x', y: 60, x: 60,
          pre:  { a: 1 },
          post: { b0: 1, b1: 1 }
      }
      - {label: 'z0', y: 30, x: 140,
          pre:  { b0: 1 },
          post: { d0: 1 }
      }
      - { label: 'z1', y: 90, x: 140,
          pre:  { b1: 1 },
          post: { d1: 1 }
      }
      - { label: 'y', y: 60, x: 220,
          pre:  { d0: 1, d1: 1 },
          post: { c: 1 }
      }
    marking: { a: 1 }
    scale: 1

---
Expressing events happening in parallel is often necessary. This net shows how a single, sequential process can be split into two branches which run in parallel and then sync. The concept of [parallel computing](https://en.wikipedia.org/wiki/Parallel_computing) is an important one.

### Split-Join Net

<script>addNetByName('default')</script>
