---
layout: details 
title: Producer - Consumer
nets:
  default:
    states: 
      - { label: "a",     y: 10, x: 20 }
      - { label: "b",     y: 30, x: 20 }
      - { label: "c",     y: 10, x: 80 }
      - { label: "d",     y: 30, x: 80 }
      - { label: "queue", y: 20, x: 50 } 
    transitions:
      - { label: "x", y: 20, x: 30,
          pre:  { a: 1 },
          post: { queue: 1, b: 1 }
        }
      - { label: "y", y: 20, x: 10,
          pre:  { b: 1 },
          post: { a: 1 }
        }
      - { label: "w", y: 20, x: 70,
          pre:  { queue: 1, d: 1 },
          post: { c: 1 }
        }
      - { label: "z", y: 20, x: 90,
          pre:  { c: 1 },
          post: { d: 1 }
        }
    marking:
        { a: 1, d: 1 }
    scale: 4

---
<!-- first paragraph is the net description -->
This is the net description

### Producer-Consumer Net

<script>addNetByName('default')</script>