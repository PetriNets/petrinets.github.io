---
layout: details 
title: Traffic Lights 
nets:
  default:
    states: 
      - { label: 'a',     y: 30, x: 10 }
      - { label: 'b',     y: 30, x: 30 }
      - { label: 'c',     y: 30, x: 90 }
      - { label: 'd',     y: 30, x: 70 }
      - { label: 'queue', y: 30, x: 50 }
    transitions:
      - { label: 'x', y: 20, x: 30,
          pre:  { a: 1 },
          post: { queue: 1, b: 1 }
        }
      - { label: 'y', y: 40, x: 30,
          pre:  { b: 1, queue: 1 },
          post: { a: 1 }
        }
      - { label: 'w', y: 20, x: 70,
          pre:  { queue: 1, d: 1 },
          post: { c: 1 }
        }
      - { label: 'z', y: 40, x: 70,
          pre:  { c: 1 },
          post: { d: 1, queue: 1 }
        }
    marking: { a: 1, d: 1 }
    scale: 4
---
<!-- first paragraph is the net description -->
This is the net description

### Traffic Light Net

<script>addNetByName('default')</script>