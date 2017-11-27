---
layout: details 
title: Pawel's Net 
nets:
  default:
    states:
      - { label: "a", x: 20, y: 20} 
      - { label: "b", x: 20, y: 140 } 
      - { label: "c", x: 130,  y: 140 } 
      - { label: "d", x: 130,  y: 20 }
      - { label: "e", x: 240,   y: 20 }
      - { label: "f", x: 350,  y: 20 }
      - { label: "g", x: 240,   y: 150 } 
      - { label: "h", x: 350,  y: 150 } 
    transitions:
      - { label: "x", x: -40, y: 80,
          post: { a: 1 } ,
          pre:  { b: 1 }
        }
      - { label: "y", x: 180, y: 80,
          pre:  { g: 1, d: 1 },
          post: { e: 1, c: 1 }
        }
      - { label: "z", x: 300, y: 80,
          pre:  {h: 1, e: 1},
          post: {f: 1, g: 1}
        }
      - { label: "q", x: 400, y: 80,
          post: { h: 1 },
          pre:  { f: 1 }
        }
      - { label: "r", x: 70, y: 80,
          pre:  { c: 1, a: 1 },
          post: { d: 1, b: 1 }
        }
    marking: {}
    scale: 1

---
<!-- first paragraph is the net description -->
This is the net description

### Pawel's Net

* write stuff about the net

<script>addNetByName('default')</script>