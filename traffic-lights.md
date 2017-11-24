---
layout: details 
title: Traffic Lights 
---

### Traffic Light Net
Some stuff about this amazing net

<script>
    // pnet 3
    var states_pnet3 = [
        { label: 'a', y: 30, x: 10 },
        { label: 'b', y: 30, x: 30 },
        { label: 'c', y: 30, x: 90 },
        { label: 'd', y: 30, x: 70 },
        { label: 'queue', y: 30, x: 50 },
    ]
    var transitions_pnet3 = [
        {
            label: 'x', y: 20, x: 30,
            pre: { a: 1 },
            post: {
                queue: 1,
                b: 1
            }
        },
        {
            label: 'y', y: 40, x: 30,
            pre: { b: 1, queue: 1 },
            post: { a: 1 }
        },
        {
            label: 'w', y: 20, x: 70,
            pre: { queue: 1, d: 1 },
            post: { c: 1 }
        },
        {
            label: 'z', y: 40, x: 70,
            pre: { c: 1 },
            post: { d: 1, queue: 1 }
        }
    ];
    var marking_pnet3 = { a: 1, d: 1 };
    //end pnet3

    // drawing stuffs
    insertNet(states_pnet3, transitions_pnet3, marking_pnet3, 4);
</script>

Some stuff about the net
[edit](https://github.com/PetriNets/petrinets.github.io/edit/master/traffic-lights.md)