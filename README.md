# SLAM - An autonomous bot using [Microsoft Kinect](https://en.wikipedia.org/wiki/Kinect)


## Description
An autonomous mobile robot is a machine that navigates in an unknown and unpredictable environment. These robots cannot always be programmed to execute predefined actions because one does not know in advance what will be the outputs of the sensors that control the motor movements. Thus these robots implement cognitive computing that processes the dynamic streams of the present situations and based on which decides it movement. These robots finds enormous applications in space exploration and aerial surveillance systems. Simple applications include domestic cleaning bots, autonomous quad-copter and lawn mower. This repository illustrates a few basic techniques and algorithms that will be used to implement an Autonomous Mobile Robot that also constructs a 3D map of the environment using the Self Localization and Mapping (SLAM) technique. The bot will ultimately should traverse between any two given points and find out the shortest possible path, avoiding obstacles on its way. It also includes the autonomous obstacle avoider developed so far, an important milestone towards achieving the final bot.


## Key Highlights


###	1.	[Obstacle avoidance algorithm](https://en.wikipedia.org/wiki/Obstacle_avoidance)
Every mobile robot should have the knowledge of its target destination and should be able to reach to it in the shortest possible path. Thus it is required that the robot should have the ability of localizing itself with respect to the environment so as to navigate efficiently through an unknown environment. But before the localization, one of the most essential part of an autonomous mobile robot is to detect obstacles and avoid it while traversing. For this, our RGBD sensor Microsoft Kinect captures data which is then processed according to the algorithm shown in the figure 1. The input frames are divided into 3 parts after which we set a threshold distance which filters out all the obstacles above this threshold distance. After removing the background noise, all the connected components in each section of the frame is found which helps us to compute the no of centroids of obstacles in each section. The no of obstacle thus found is used to decide the direction of the movement of the bot.


###	2.	[Simultaneous Localization & Mapping (SLAM)](https://en.wikipedia.org/wiki/Simultaneous_localization_and_mapping)
Autonomous mobile robots are able to support humans in a variety of tasks. Especially in dangerous or difficult to reach environments like hazardous areas or distant planets. For autonomous navigation a key requirement of a mobile robot is to localize itself and concurrently build a map based on its sensory input while exploring its environment. This is a very challenging problem as all sensor measurements are noisy. Thus, there are errors in the localization leading to an inaccurate map and vice versa. This means the errors in the map and uncertainties in the localization are dependent from each other, which is known as the simultaneous localization and mapping (SLAM) problem. In order to build a precise map, the uncertainties and dependencies have to be considered in a SLAM algorithm. By observing areas or features of the map several times, the uncertainties in the map and in the localization can be decreased and the map converges to a better solution. The Microsoft Kinect provides a 3D point cloud additionally containing color information, making it a very promising choice for mobile robots in indoor environments. With the data from the Kinect a colored 3D map of the environment can be built and used for localization. 


###	3. 	[Visual Odometry](https://en.wikipedia.org/wiki/Visual_odometry)
This is the process of estimating the egomotion of an agent using only the input of a single or multiple cameras attached to it. It operates by incrementally estimating the pose of the vehicle through examination of the changes that motion induces on the images of its on-board cameras.Odometry is an essential part of the Simultaneous Localisation and Mapping process, along with feature extraction and feature identification and mapping. The SLAM bot being designed has been provided with only a kinect sensor for visual input. Thus, visual odometry provides an ideal method of odometric estimation. 


###	4.	[Feature Identification (or Landmark Identification)](https://en.wikipedia.org/wiki/Feature_detection_(computer_vision))

It refers to the process of extracting the features in an image and identifying those features in the image that have already been extracted before. These identified features would represent the identification of known landmarks in the terrain, which could be used for the following purposes:

-	To enable a finer degree of accuracy in the localization of the bot - This would entail enabling the bot to correct its location with the help of the identified landmarks. This correction is essential as small errors obtained due to inaccuracies in the odometric sensors may add up to become significant over time.

-	In the process of path planning - In the process of path planning, identified landmarks may be used to determine both a more precise location of the bot, as well as how much of the planned path the bot has traversed (where the part of the planned path may be represented by a series of landmarks that it has to visit in order, for example).
