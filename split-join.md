---
layout: details 
title: Split - Join
---

### Split-Join Net
Some stuff about the net yo!

<script>
    // pnet2
    var states_pnet2 = [
        {label:'a', y:60, x:20},
        {label:'b0', y:30, x:100},
        {label:'b1', y:90, x:100},
        {label:'d0', y:30, x:180},
        {label:'d1', y:90, x:180},
        {label:'c', y:60, x:260}
    ]

    var transitions_pnet2 = [
        {label: 'x', y: 60, x: 60,
            pre: {a: 1},
            post: { b0: 1, b1: 1 }
        },
        {label: 'z0', y: 30, x: 140,
            pre: {b0: 1},
            post: {d0: 1}
        },
        {label: 'z1', y: 90, x: 140,
            pre: {b1: 1},
            post: {d1: 1}
        },
        {label: 'y', y: 60, x: 220,
            pre: { d0: 1, d1: 1 },
            post: {c: 1}}
    ];

    var marking_pnet2 = {a: 1};
    // pnet 2

    // insert net 
    insertNet(states_pnet2, transitions_pnet2, marking_pnet2, 1);
</script>

More stuff about the net