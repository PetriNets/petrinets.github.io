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
<!-- first paragraph is the net description -->
This is the net description

### Pawel's Net

<script>addNetByName('default')</script>