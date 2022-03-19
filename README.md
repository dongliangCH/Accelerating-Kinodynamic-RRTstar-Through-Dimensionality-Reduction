# Accelerating-Kinodynamic-RRT-star-Through-Dimensionality-Reduction
Include three examples: 2D double integrator, 3D double integrator, linearized quadrotor.

The main idea is to use a Partial-Final-State-Free (PFF) optimal controller for dimensionality reduced Kinodynamic motion planning.
Also derived an analytical solution for the PFF optimal control problem for linear systems.

Besides the code for the proposed algorithm, Kino-RRT*, we also provide an implementation of the regular Kinodynamic RRT*.
With dimensionality reduction, Kino-RRT* achieves faster convergence. A comparison example is given below.

![4fig2000](https://user-images.githubusercontent.com/37213419/159105348-b628a774-67ca-4a69-90bd-c2de386e9233.png)

Kino-RRT*, 2000 Nodes

![3fig2000](https://user-images.githubusercontent.com/37213419/159105337-612a55dd-d3a7-4639-8dbc-91f100c56d79.png)

Kinodynamic RRT*, 2000 Nodes

Reference: 

Zheng, Dongliang, and Panagiotis Tsiotras. "Accelerating Kinodynamic RRT* Through Dimensionality Reduction." 2021 IEEE/RSJ International Conference on Intelligent Robots and Systems (IROS). IEEE, 2021.
