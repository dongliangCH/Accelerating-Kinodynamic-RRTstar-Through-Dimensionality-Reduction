# Accelerating-Kinodynamic-RRTstar-Through-Dimensionality-Reduction
Include three examples: 2D double integrator, 3D double integrator, linearized quadrotor.

Main idea is to use a Partial-Final-State-Free optimal controller for Kinodynamic motion planning with dimensionality reduction.
Also derived an anlytical solution for the PFF optimal control problem for linear systems

Becides the code for the proposed algorithm, Kino-RRT*, we also provide an implemnetation of the regular Kinodynamic RRT*.
With dimensionality reduction, Kino-RRT* achieves faster convergence, see the comparison example below.

![4fig2000](https://user-images.githubusercontent.com/37213419/159105348-b628a774-67ca-4a69-90bd-c2de386e9233.png)
Kino-RRT* 2000 Nodes

![4fig4000](https://user-images.githubusercontent.com/37213419/159105372-64ff7751-2f00-4564-a9a8-8ca797d3ee1a.png)
Kino-RRT* 4000 Nodes

![3fig2000](https://user-images.githubusercontent.com/37213419/159105337-612a55dd-d3a7-4639-8dbc-91f100c56d79.png)
Kinodynamic RRT* 2000 Nodes

![3fig4000](https://user-images.githubusercontent.com/37213419/159105325-7bec3e6e-5b31-4c97-8fdd-065d0daa1862.png)
Kino-RRT* 4000 Nodes

Reference: Zheng, Dongliang, and Panagiotis Tsiotras. "Accelerating Kinodynamic RRT* Through Dimensionality Reduction." 2021 IEEE/RSJ International Conference on Intelligent Robots and Systems (IROS). IEEE, 2021.
