---
layout: details
title: Split - Join
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
