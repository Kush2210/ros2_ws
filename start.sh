#!/bin/bash

cd ~/Desktop/ros2_ws
source install/setup.bash

tmux new-session -d -s ros_session
tmux send-keys "ros2 launch mobile_robot gazebo_model.launch.py" C-m
tmux split-window -h
tmux send-keys "source ~/Desktop/ros2_ws/install/setup.bash; python3 ~/Desktop/ros2_ws/src/mobile_robot/src/gazebo.py" C-m
tmux attach-session -t ros_session
