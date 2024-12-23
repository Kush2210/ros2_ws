import os
from ament_index_python.packages import get_package_share_directory
from launch import LaunchDescription
from launch.actions import IncludeLaunchDescription
from launch.launch_description_sources import PythonLaunchDescriptionSource
from launch_ros.actions import Node
import xacro
from launch.actions import SetEnvironmentVariable

def generate_launch_description():
    # Define package and file names
    robotXacroName = 'mydifferential_drive_robot'
    namePackage = 'mobile_robot2'
    modelFileRelativePath = 'model/robot2.xacro'
    worldFileRelativePath = 'model/empty_world.world'

    # Get paths
    pathModelFile = os.path.join(get_package_share_directory(namePackage), modelFileRelativePath)
    pathWorldFile = os.path.join(get_package_share_directory(namePackage), worldFileRelativePath)
    
    gazebo_model_path = os.path.join(get_package_share_directory(namePackage), 'model')
    set_gazebo_model_path = SetEnvironmentVariable('GAZEBO_MODEL_PATH', gazebo_model_path)

    # Get RViz config path
    rviz_config_path = os.path.join(get_package_share_directory(namePackage), 
                                   'rviz', 'robot_config.rviz')

    # Process XACRO file
    robotDescription = xacro.process_file(pathModelFile).toxml()

    # Gazebo launch
    gazebo_rosPackageLaunch = PythonLaunchDescriptionSource(
        os.path.join(get_package_share_directory('gazebo_ros'), 'launch', 'gazebo.launch.py')
    )
    
    gazeboLaunch = IncludeLaunchDescription(
        gazebo_rosPackageLaunch,
        launch_arguments={'world': pathWorldFile}.items()
    )

    # Spawn robot
    spawnModelNode = Node(
        package='gazebo_ros',
        executable='spawn_entity.py',
        arguments=['-topic', 'robot_description', '-entity', robotXacroName],
        output='screen'
    )

    # Robot state publisher
    nodeRobotStatePublisher = Node(
        package='robot_state_publisher',
        executable='robot_state_publisher',
        output='screen',
        parameters=[{'robot_description': robotDescription, 'use_sim_time': True}]
    )

    # Add RViz2 node
    rviz_node = Node(
        package='rviz2',
        executable='rviz2',
        name='rviz2',
        arguments=['-d', rviz_config_path],
        output='screen'
    )

    # Add point cloud to laser scan conversion (optional)
    pointcloud_to_laserscan_node = Node(
        package='pointcloud_to_laserscan',
        executable='pointcloud_to_laserscan_node',
        name='pointcloud_to_laserscan',
        parameters=[{
            'target_frame': 'base_link',
            'transform_tolerance': 0.01,
            'min_height': 0.0,
            'max_height': 1.0,
            'angle_min': -1.5708,
            'angle_max': 1.5708,
            'angle_increment': 0.0087,
            'scan_time': 0.3333,
            'range_min': 0.45,
            'range_max': 100.0,
            'use_inf': True,
            'inf_epsilon': 1.0
        }],
        remappings=[
            ('cloud_in', '/velodyne/pointcloud2'),
            ('scan', '/scan')
        ]
    )

    # Create and return launch description
    ld = LaunchDescription()
    ld.add_action(set_gazebo_model_path)
    ld.add_action(gazeboLaunch)
    ld.add_action(spawnModelNode)
    ld.add_action(nodeRobotStatePublisher)
    ld.add_action(rviz_node)
    ld.add_action(pointcloud_to_laserscan_node)
    
    return ld