# SCARA Robot
Planar robots play an increasingly important role in industrial automation, especially in the assembly industry. Industrial planar robots are developed for fast, accurate, and repetitive tasks. As one kind of the planar robot, the selective compliance assembly robot arm (SCARA) robot is pliable in planar and rigid in Z axis. The SCARA robot features simpler structure, lighter mass, faster response, more precise positioning accuracy compared to most of robots. Thus, the SCARA robot is widely applied to assembly industry. Additionally, pick-and-place tasks are basic operation of assembly processes, such as inserting an edge connector socket into a printed circuit board and classifying workpieces of sorting systems. Currently, one of the world's fastest SCARA robots is Adept I. Adept I has several times of velocity of other joints robots, which can reach 10 m/s of the end effector and achieve less than ±O.02 mm repeated accuracy. The research of the SCARA robot focuses on accurate modeling, visual servo, human-robot collaboration, and trajectory planning, etc. 
![image](https://user-images.githubusercontent.com/99408263/176102090-4af1b2ce-1a70-42c4-ba0a-255e923e17fe.png)
# Project Description
In this Project, a 4 DOF SCARA Revolute-Revolute-Prismatic-Revolute-type (RRPR) robot manipulator is designed and implemented. Firstly, the SCARA robot is designed in accordance with the mechanical calculations. Then, forward, and inverse kinematic equations of the robot are derived by using the D-H parameters and analytical methods. Dynamic model of the robot is created directly in MATLAB which is then used to obtain torques and forces on joints from position and velocity information. The trajectory planning is designed using the calculated kinematic equations, and the simulation is performed in MATLAB. 
# Forward Kinematics
When the robot movement of each joint is known, the process to solve the position of the end effector is denoted as the forward kinematic of the robot. The MATLAB code of forward kinematic of the Robot is [here](https://github.com/farazahmadd/scare-robot/blob/main/Forward_Kinematics_code.m). The simulation result is shown below: 

https://user-images.githubusercontent.com/99408263/176102492-b3a4b21c-c220-4edd-8f74-2d3cbbe0cf1c.mp4
# Inverse Kinematics
In most situations, the movement of each joint from point A to point B is required. Inverse kinematic analysis is employed to solve this problem. The MATLAB code of forward kinematic of the Robot is [here](https://github.com/farazahmadd/scare-robot/blob/main/Inverse_Kinematics_code.m). The simulation result is shown below:

https://user-images.githubusercontent.com/99408263/176102670-7d2c4dac-a689-47d5-ad26-ec78e5b8ec72.mp4
# Dynamics
Dynamic model of the robot was directly calculated MATLAB and then used to find all the torques and forces on the joints. The MATLAB code of dynamics of the Robot is [here](https://github.com/farazahmadd/scare-robot/blob/main/Dynamics_Code.m). The simulation result is shown below:


https://user-images.githubusercontent.com/99408263/176102695-d3522d93-7636-4759-9546-d94b83f7fdce.mp4


# Trajectory Planning
Trajectory planning is to plan how to move from a start position to a final position. Trajectory can be planned in joint space or task space. We used joint space for trajectory planning because it is computationally less expensive the task space. Initial and final velocities were set to zero and initial position was [0.5,0.5,0.2] and final position was [1.2,1.2,1.1]. The MATLAB code of trajectory planning of the Robot is [here](https://github.com/farazahmadd/scare-robot/blob/main/Trajectory_Planning_Code.m). The simulation result is shown below:


https://user-images.githubusercontent.com/99408263/176102714-f6c16c05-6f8c-4635-8ccd-486d6ec92c85.mp4

