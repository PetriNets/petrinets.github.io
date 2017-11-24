---
layout: details 
title: Producer - Consumer 
---

### Producer-Consumer Net
This iis the prodfaksjhfakjssdf

<script>
    // pnet1
    var states_pnet1 = [
        {label:'a', y:10, x:20},
        {label:'b', y:30, x:20},
        {label:'c', y:10, x:80},
        {label:'d', y:30, x:80},
        {label:'queue', y:20, x:50},
    ]

    var transitions_pnet1 = [
        {label: 'x', y: 20, x: 30,
            pre: {a: 1},
            post: {
                queue: 1,
                b: 1
            }
        },
        {label: 'y', y: 20, x: 10,
            pre: {b: 1},
            post: {a: 1}
        },
        {label: 'w', y: 20, x: 70,
            pre: {queue: 1, d: 1},
            post: {c: 1}
        },
        {label: 'z', y: 20, x: 90,
            pre: {c: 1},
            post: {d: 1}}
    ];

    var marking_pnet1 = {a: 1, d: 1};
    // end pnet1    

    // insert net 
    insertNet(states_pnet1, transitions_pnet1, marking_pnet1, 4);
</script>

this is an importatnt net becaus ahhahaha

[edit](https://github.com/PetriNets/petrinets.github.io/edit/master/producer-consumer.md)