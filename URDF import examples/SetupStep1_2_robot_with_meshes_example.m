close all; clear;
SRD = SRDuserinterface;

% LinkArray = UP_GetLinkArrayFromURDF('UrdfFilePath','./laika/urdf/laikago.urdf','ParseSTL',true);
% InitialPosition = zeros(1,21);
% 
% LinkArray = UP_GetLinkArrayFromURDF('UrdfFilePath','./iiwa/iiwa14.urdf','ParseSTL',true);
% InitialPosition = [ pi/2; pi/2; pi/2; pi/2; pi/2; pi/2; pi/2; pi/2; pi/2; 0; 0];
% 
% AxisLimits = []; %Set axis limits for the snapshot
% ViewAngle = [45, 45];
% DrawFrames = true;
% DrawMeshes = true;
% SRD.CreateRobotStructure(LinkArray, InitialPosition, AxisLimits, ViewAngle,DrawFrames,DrawMeshes); %Create the robot
% axis equal;

%Set generalised coordinates; Use negative numbers to make clock-wise
%rotations be positive
% Shin.SetUsedGenCoordinates(1);
% Hip.SetUsedGenCoordinates(2);
% Torso.SetUsedGenCoordinates(3);


LinkArray = SRD_GetLinkArrayFromURDF('UrdfFilePath','./iiwa/iiwa14.urdf','ParseSTL',true);

SRD_LinkSet_UsedGenCoordinates(LinkArray, 'iiwa_link_1', 1);
SRD_LinkSet_UsedGenCoordinates(LinkArray, 'iiwa_link_2', 2);
SRD_LinkSet_UsedGenCoordinates(LinkArray, 'iiwa_link_3', 3);
SRD_LinkSet_UsedGenCoordinates(LinkArray, 'iiwa_link_4', 4);
SRD_LinkSet_UsedGenCoordinates(LinkArray, 'iiwa_link_5', 5);
SRD_LinkSet_UsedGenCoordinates(LinkArray, 'iiwa_link_6', 6);
SRD_LinkSet_UsedGenCoordinates(LinkArray, 'iiwa_link_7', 7);

Color_0 = [1, 0, 0];
Color_1 = [0.95, 0.5, 0.3];
Color_2 = [0.00, 0.00, 0.00];
SRD_LinkSet_Color(LinkArray, 'iiwa_link_0', Color_0);
SRD_LinkSet_Color(LinkArray, 'iiwa_link_1', Color_1);
SRD_LinkSet_Color(LinkArray, 'iiwa_link_2', Color_2);
SRD_LinkSet_Color(LinkArray, 'iiwa_link_3', Color_1);
SRD_LinkSet_Color(LinkArray, 'iiwa_link_4', Color_2);
SRD_LinkSet_Color(LinkArray, 'iiwa_link_5', Color_1);
SRD_LinkSet_Color(LinkArray, 'iiwa_link_6', Color_2);
SRD_LinkSet_Color(LinkArray, 'iiwa_link_7', Color_1);

SRD_save(LinkArray, 'LinkArray');

%iiwa
% InitialPosition = [ pi/2; pi/2; pi/2; pi/2; pi/2; pi/2; pi/2; pi/2; pi/2; 0; 0];
InitialPosition = [ pi/2; pi/2; pi/2; pi/2; pi/2; pi/2; pi/2;];
SRD_save(InitialPosition, 'InitialPosition');

SimulationEngine = SRD.CreateRobotStructure('LinkArray', LinkArray,  ...
    'InitialPosition', InitialPosition); %Create the robot
SRD_save(SimulationEngine, 'SimulationEngine');


SRD.SetupVisuals('AxisLimits', [-0.2; 1; -0.2; 1; 0; 1], ...
    'ViewAngle', [-37.5, 30], ...
    'ToDrawMeshes', true, ...
    'Animation_ToUseGrid', true, ...
    'Animation_ToUseGridMinor', true, ...
    'DrawRobot_Default_RobotColor', [0.6 0.3 0], ...
    'DrawRobot_Default_EdgeAlpha', 0.3, ...
    'DrawRobot_Default_FaceAlpha', 1, ...
    'DrawRobot_Default_LineWidth', 0.5, ...
    'DrawRobot_STL_FaceColor', [0.8 0.8 1.0], ...
    'DrawRobot_STL_EdgeColor', 'none', ...
    'DrawRobot_STL_FaceLighting', 'gouraud', ...
    'DrawRobot_STL_AmbientStrength', 0.15, ...
    'DrawRobot_STL_camlight', 'headlight', ...
    'DrawRobot_STL_material', 'metal', ... %shiny dull metal
    'ToDrawFrames', false, ...
    'DrawRobot_Frame_Scale', 0.2, ...
    'DrawRobot_Frame_LineWidth', 1, ...
    'FileName_visuals_config', []);

DrawRobot_function = SRD_DrawRobot_get_function('DrawRobot_Type', 'STL', ... %'Default' or 'STL' or 'Custom'
    'DrawRobot_Custom_handle', [], ...
    'Function_Type', 'DrawInitialPosition', ... %'DrawGivenPosition' or 'DrawInitialPosition'  or 'DrawCurrentPosition'
    'SimulationEngine', [], ...
    'FileName_visuals_config', []);

DrawRobot_function([])
SRD__make_default_scene('STL')
