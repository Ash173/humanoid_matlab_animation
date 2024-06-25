% Humanoid simulation in MATLAB by Ashwin R Nair
close 'all'
clear

%% Initialising all points
N = [0 0 0];
S1 = [N(1)+0.4 N(2) N(3)];
S2 = [N(1)-0.4 N(2) N(3)];
E1 = [S1(1) S1(2) S1(3)-0.4];
E2 = [S2(1) S2(2) S2(3)-0.4];
H1 = [E1(1) E1(2) E1(3)-0.4];
H2 = [E2(1) E2(2) E2(3)-0.4];
C = [N(1) N(2) N(3)-0.3];
T1 = [N(1)+0.3 N(2) N(3)-0.6];
T2 = [N(1)-0.3 N(2) N(3)-0.6];
K1 = [T1(1) T1(2) T1(3)-0.6];
K2 = [T2(1) T2(2) T2(3)-0.6];
L1 = [K1(1) K1(2) K1(3)-0.6];
L2 = [K2(1) K2(2) K2(3)-0.6];

%% Elbow 1
initial_position(1);
for th=0:1:90
    if th <= 45
        angle = th;
    else
        angle = 90 - th;
    end
    H1rot = rotationx(angle)*(H1-E1)' + E1';
    p_plot1_rot = [E1' H1rot];
    line = plot3(p_plot1_rot(1,:), p_plot1_rot(2,:), p_plot1_rot(3,:), 'r','LineWidth', 2); 
    drawnow;
    pause(0.01);
    delete(line);
end
cla;
%% Elbow 2
initial_position(2);
for th=0:1:90
    if th <= 45
        angle = th;
    else
        angle = 90 - th;
    end
    H2rot = rotationx(angle)*(H2-E2)' + E2';
    p_plot1_rot = [E2' H2rot];
    line = plot3(p_plot1_rot(1,:), p_plot1_rot(2,:), p_plot1_rot(3,:), 'r','LineWidth', 2); 
    drawnow;
    pause(0.01);
    delete(line);
end
cla;
%% Knee 1
initial_position(3);
for th=0:1:90
    if th <= 45
        angle = th;
    else
        angle = 90 - th;
    end
    L1rot = rotationx(-angle)*(L1-K1)' + K1';
    p_plot1_rot = [K1' L1rot];
    line = plot3(p_plot1_rot(1,:), p_plot1_rot(2,:), p_plot1_rot(3,:), 'r','LineWidth', 2); 
    drawnow;
    pause(0.01);
    delete(line);
end
cla;
%% Knee 2
initial_position(4);
for th=0:1:90
    if th <= 45
        angle = th;
    else
        angle = 90 - th;
    end
    L2rot = rotationx(-angle)*(L2-K2)' + K2';
    p_plot1_rot = [K2' L2rot];
    line = plot3(p_plot1_rot(1,:), p_plot1_rot(2,:), p_plot1_rot(3,:), 'r','LineWidth', 2);
    drawnow;
    pause(0.01);
    delete(line);
end
cla;
%% Shoulder 1 along x
initial_position(5);
for th=0:1:90   
    if th <= 45
        angle = th;
    else
        angle = 90 - th;
    end
    E1rot = rotationx(angle)*(E1-S1)' + S1';
    H1rot = rotationx(angle)*(H1-S1)' + S1';
    p_plot1_rot = [S1' E1rot];
    p_plot2_rot = [E1rot H1rot];
    line1 = plot3(p_plot1_rot(1,:), p_plot1_rot(2,:), p_plot1_rot(3,:), 'g','LineWidth', 2); 
    line2 = plot3(p_plot2_rot(1,:), p_plot2_rot(2,:), p_plot2_rot(3,:), 'r','LineWidth', 2); 
    drawnow;
    pause(0.01);
    delete(line1); delete(line2);
end
cla;
%% Shoulder 1 along y
initial_position(5);
for th=0:1:90
    if th <= 45
        angle = th;
    else
        angle = 90 - th;
    end
    E1rot = rotationy(-angle)*(E1-S1)' + S1';
    H1rot = rotationy(-angle)*(H1-S1)' + S1';
    p_plot1_rot = [S1' E1rot];
    p_plot2_rot = [E1rot H1rot];
    line1 = plot3(p_plot1_rot(1,:), p_plot1_rot(2,:), p_plot1_rot(3,:), 'g','LineWidth', 2); 
    line2 = plot3(p_plot2_rot(1,:), p_plot2_rot(2,:), p_plot2_rot(3,:), 'r','LineWidth', 2); 
    drawnow;
    pause(0.01);
    delete(line1); delete(line2);
end
cla;
%% Shoulder 1 along z
initial_position(5);
for th=0:1:90
    angle = th;
    E1rot = rotationy(-angle)*(E1-S1)' + S1';
    H1rot = rotationy(-angle)*(H1-S1)' + S1';
    p_plot1_rot = [S1' E1rot];
    p_plot2_rot = [E1rot H1rot];
    line1 = plot3(p_plot1_rot(1,:), p_plot1_rot(2,:), p_plot1_rot(3,:), 'g','LineWidth', 2); 
    line2 = plot3(p_plot2_rot(1,:), p_plot2_rot(2,:), p_plot2_rot(3,:), 'r','LineWidth', 2); 
    drawnow;
    pause(0.01);
    delete(line1); delete(line2);
end
for th=0:1:90
    E1_1 = [S1(1)+0.4 S1(2) S1(3)];
    H1_1 = [E1_1(1)+0.4 E1_1(2) E1_1(3)];
    if th <= 45
        angle = th;
    else
        angle = 90 - th;
    end
    E1rot = rotationz(angle)*(E1_1-S1)' + S1';
    H1rot = rotationz(angle)*(H1_1-S1)' + S1';
    p_plot1_rot = [S1' E1rot];
    p_plot2_rot = [E1rot H1rot];
    line1 = plot3(p_plot1_rot(1,:), p_plot1_rot(2,:), p_plot1_rot(3,:), 'g','LineWidth', 2); 
    line2 = plot3(p_plot2_rot(1,:), p_plot2_rot(2,:), p_plot2_rot(3,:), 'r','LineWidth', 2); 
    drawnow;
    pause(0.01);
    delete(line1); delete(line2);
end
for th=90:-1:0
    angle = th;
    E1rot = rotationy(-angle)*(E1-S1)' + S1';
    H1rot = rotationy(-angle)*(H1-S1)' + S1';
    p_plot1_rot = [S1' E1rot];
    p_plot2_rot = [E1rot H1rot];
    line1 = plot3(p_plot1_rot(1,:), p_plot1_rot(2,:), p_plot1_rot(3,:), 'g','LineWidth', 2); 
    line2 = plot3(p_plot2_rot(1,:), p_plot2_rot(2,:), p_plot2_rot(3,:), 'r','LineWidth', 2); 
    drawnow;
    pause(0.01);
    delete(line1); delete(line2);
end
cla;
%% Shoulder 2 along x
initial_position(6);
for th=0:1:90   
    if th <= 45
        angle = th;
    else
        angle = 90 - th;
    end
    E2rot = rotationx(angle)*(E2-S2)' + S2';
    H2rot = rotationx(angle)*(H2-S2)' + S2';
    p_plot1_rot = [S2' E2rot];
    p_plot2_rot = [E2rot H2rot];
    line1 = plot3(p_plot1_rot(1,:), p_plot1_rot(2,:), p_plot1_rot(3,:), 'g','LineWidth', 2); 
    line2 = plot3(p_plot2_rot(1,:), p_plot2_rot(2,:), p_plot2_rot(3,:), 'r','LineWidth', 2); 
    drawnow;
    pause(0.01);
    delete(line1); delete(line2);
end
cla;
%% Shoulder 2 along y
initial_position(6);
for th=0:1:90
    if th <= 45
        angle = th;
    else
        angle = 90 - th;
    end
    E2rot = rotationy(angle)*(E2-S2)' + S2';
    H2rot = rotationy(angle)*(H2-S2)' + S2';
    p_plot1_rot = [S2' E2rot];
    p_plot2_rot = [E2rot H2rot];
    line1 = plot3(p_plot1_rot(1,:), p_plot1_rot(2,:), p_plot1_rot(3,:), 'g','LineWidth', 2); 
    line2 = plot3(p_plot2_rot(1,:), p_plot2_rot(2,:), p_plot2_rot(3,:), 'r','LineWidth', 2); 
    drawnow;
    pause(0.01);
    delete(line1); delete(line2);
end
cla;
%% Shoulder 2 along z
initial_position(6);
for th=0:1:90
    angle = th;
    E2rot = rotationy(angle)*(E2-S2)' + S2';
    H2rot = rotationy(angle)*(H2-S2)' + S2';
    p_plot1_rot = [S2' E2rot];
    p_plot2_rot = [E2rot H2rot];
    line1 = plot3(p_plot1_rot(1,:), p_plot1_rot(2,:), p_plot1_rot(3,:), 'g','LineWidth', 2); 
    line2 = plot3(p_plot2_rot(1,:), p_plot2_rot(2,:), p_plot2_rot(3,:), 'r','LineWidth', 2); 
    drawnow;
    pause(0.01);
    delete(line1); delete(line2);
end
for th=0:1:90   
    E2_1 = [S2(1)-0.4 S2(2) S2(3)];
    H2_1 = [E2_1(1)-0.4 E2_1(2) E2_1(3)];
    if th <= 45
        angle = th;
    else
        angle = 90 - th;
    end
    E2rot = rotationz(-angle)*(E2_1-S2)' + S2';
    H2rot = rotationz(-angle)*(H2_1-S2)' + S2';
    p_plot1_rot = [S2' E2rot];
    p_plot2_rot = [E2rot H2rot];
    line1 = plot3(p_plot1_rot(1,:), p_plot1_rot(2,:), p_plot1_rot(3,:), 'g','LineWidth', 2); 
    line2 = plot3(p_plot2_rot(1,:), p_plot2_rot(2,:), p_plot2_rot(3,:), 'r','LineWidth', 2); 
    drawnow;
    pause(0.01);
    delete(line1); delete(line2);
end
for th=90:-1:0
    angle = th;
    E2rot = rotationy(angle)*(E2-S2)' + S2';
    H2rot = rotationy(angle)*(H2-S2)' + S2';
    p_plot1_rot = [S2' E2rot];
    p_plot2_rot = [E2rot H2rot];
    line1 = plot3(p_plot1_rot(1,:), p_plot1_rot(2,:), p_plot1_rot(3,:), 'g','LineWidth', 2); 
    line2 = plot3(p_plot2_rot(1,:), p_plot2_rot(2,:), p_plot2_rot(3,:), 'r','LineWidth', 2); 
    drawnow;
    pause(0.01);
    delete(line1); delete(line2);
end
cla;
%% Hip 1 along x
initial_position(7);
for th=0:1:90
    if th <= 45
        angle = th;
    else
        angle = 90 - th;
    end
    K1rot = rotationx(angle)*(K1-T1)' + T1';
    L1rot = rotationx(angle)*(L1-T1)' + T1';
    p_plot1_rot = [T1' K1rot];
    p_plot2_rot = [K1rot L1rot];
    line1 = plot3(p_plot1_rot(1,:), p_plot1_rot(2,:), p_plot1_rot(3,:), 'g','LineWidth', 2); 
    line2 = plot3(p_plot2_rot(1,:), p_plot2_rot(2,:), p_plot2_rot(3,:), 'r','LineWidth', 2); 
    drawnow;
    pause(0.01);
    delete(line1); delete(line2);
end
cla;
%% Hip 1 along y
initial_position(7);
for th=0:1:90
    if th <= 45
        angle = th;
    else
        angle = 90 - th;
    end
    K1rot = rotationy(-angle)*(K1-T1)' + T1';
    L1rot = rotationy(-angle)*(L1-T1)' + T1';
    p_plot1_rot = [T1' K1rot];
    p_plot2_rot = [K1rot L1rot];
    line1 = plot3(p_plot1_rot(1,:), p_plot1_rot(2,:), p_plot1_rot(3,:), 'g','LineWidth', 2); 
    line2 = plot3(p_plot2_rot(1,:), p_plot2_rot(2,:), p_plot2_rot(3,:), 'r','LineWidth', 2);  
    drawnow;
    pause(0.01);
    delete(line1); delete(line2);
end
cla;
%% Hip 1 along z
initial_position(7);
for th=0:1:90
    angle = th;
    K1rot = rotationy(-angle)*(K1-T1)' + T1';
    L1rot = rotationy(-angle)*(L1-T1)' + T1';
    p_plot1_rot = [T1' K1rot];
    p_plot2_rot = [K1rot L1rot];
    line1 = plot3(p_plot1_rot(1,:), p_plot1_rot(2,:), p_plot1_rot(3,:), 'g','LineWidth', 2); 
    line2 = plot3(p_plot2_rot(1,:), p_plot2_rot(2,:), p_plot2_rot(3,:), 'r','LineWidth', 2);  
    drawnow;
    pause(0.01);
    delete(line1); delete(line2);
end
for th=0:1:90
    K1_1 = [T1(1)+0.4 T1(2) T1(3)];
    L1_1 = [K1_1(1)+0.4 K1_1(2) K1_1(3)];
    if th <= 45
        angle = th;
    else
        angle = 90 - th;
    end
    K1rot = rotationz(angle)*(K1_1-T1)' + T1';
    L1rot = rotationz(angle)*(L1_1-T1)' + T1';
    p_plot1_rot = [T1' K1rot];
    p_plot2_rot = [K1rot L1rot];
    line1 = plot3(p_plot1_rot(1,:), p_plot1_rot(2,:), p_plot1_rot(3,:), 'g','LineWidth', 2); 
    line2 = plot3(p_plot2_rot(1,:), p_plot2_rot(2,:), p_plot2_rot(3,:), 'r','LineWidth', 2); 
    drawnow;
    pause(0.01);
    delete(line1); delete(line2);
end
for th=90:-1:0
    angle = th;
    K1rot = rotationy(-angle)*(K1-T1)' + T1';
    L1rot = rotationy(-angle)*(L1-T1)' + T1';
    p_plot1_rot = [T1' K1rot];
    p_plot2_rot = [K1rot L1rot];
    line1 = plot3(p_plot1_rot(1,:), p_plot1_rot(2,:), p_plot1_rot(3,:), 'g','LineWidth', 2); 
    line2 = plot3(p_plot2_rot(1,:), p_plot2_rot(2,:), p_plot2_rot(3,:), 'r','LineWidth', 2);  
    drawnow;
    pause(0.01);
    delete(line1); delete(line2);
end
cla;
%% Hip 2 along x
initial_position(8);
for th=0:1:90
    if th <= 45
        angle = th;
    else
        angle = 90 - th;
    end
    K2rot = rotationx(angle)*(K2-T2)' + T2';
    L2rot = rotationx(angle)*(L2-T2)' + T2';
    p_plot1_rot = [T2' K2rot];
    p_plot2_rot = [K2rot L2rot];
    line1 = plot3(p_plot1_rot(1,:), p_plot1_rot(2,:), p_plot1_rot(3,:), 'g','LineWidth', 2); 
    line2 = plot3(p_plot2_rot(1,:), p_plot2_rot(2,:), p_plot2_rot(3,:), 'r','LineWidth', 2); 
    drawnow;
    pause(0.01);
    delete(line1); delete(line2);
end
cla;
%% Hip 2 along y
initial_position(8);
for th=0:1:90
    if th <= 45
        angle = th;
    else
        angle = 90 - th;
    end
    K2rot = rotationy(angle)*(K2-T2)' + T2';
    L2rot = rotationy(angle)*(L2-T2)' + T2';
    p_plot1_rot = [T2' K2rot];
    p_plot2_rot = [K2rot L2rot];
    line1 = plot3(p_plot1_rot(1,:), p_plot1_rot(2,:), p_plot1_rot(3,:), 'g','LineWidth', 2); 
    line2 = plot3(p_plot2_rot(1,:), p_plot2_rot(2,:), p_plot2_rot(3,:), 'r','LineWidth', 2);  
    drawnow;
    pause(0.01);
    delete(line1); delete(line2);
end
cla;
%% Hip 2 along z
initial_position(8);
for th=0:1:90
    angle = th;
    K2rot = rotationy(angle)*(K2-T2)' + T2';
    L2rot = rotationy(angle)*(L2-T2)' + T2';
    p_plot1_rot = [T2' K2rot];
    p_plot2_rot = [K2rot L2rot];
    line1 = plot3(p_plot1_rot(1,:), p_plot1_rot(2,:), p_plot1_rot(3,:), 'g','LineWidth', 2); 
    line2 = plot3(p_plot2_rot(1,:), p_plot2_rot(2,:), p_plot2_rot(3,:), 'r','LineWidth', 2);  
    drawnow;
    pause(0.01);
    delete(line1); delete(line2);
end
for th=0:1:90   
    K2_1 = [T2(1)-0.4 T2(2) T2(3)];
    L2_1 = [K2_1(1)-0.4 K2_1(2) K2_1(3)];
    if th <= 45
        angle = th;
    else
        angle = 90 - th;
    end
    K2rot = rotationz(-angle)*(K2_1-T2)' + T2';
    L2rot = rotationz(-angle)*(L2_1-T2)' + T2';
    p_plot1_rot = [T2' K2rot];
    p_plot2_rot = [K2rot L2rot];
    line1 = plot3(p_plot1_rot(1,:), p_plot1_rot(2,:), p_plot1_rot(3,:), 'g','LineWidth', 2); 
    line2 = plot3(p_plot2_rot(1,:), p_plot2_rot(2,:), p_plot2_rot(3,:), 'r','LineWidth', 2); 
    drawnow;
    pause(0.01);
    delete(line1); delete(line2);
end
for th=90:-1:0
    angle = th;
    K2rot = rotationy(angle)*(K2-T2)' + T2';
    L2rot = rotationy(angle)*(L2-T2)' + T2';
    p_plot1_rot = [T2' K2rot];
    p_plot2_rot = [K2rot L2rot];
    line1 = plot3(p_plot1_rot(1,:), p_plot1_rot(2,:), p_plot1_rot(3,:), 'g','LineWidth', 2); 
    line2 = plot3(p_plot2_rot(1,:), p_plot2_rot(2,:), p_plot2_rot(3,:), 'r','LineWidth', 2);  
    drawnow;
    pause(0.01);
    delete(line1); delete(line2);
end
cla;
%% Central torso along x
initial_position(9);
for th=0:1:90        
    if th <= 45
        angle = th;
    else
        angle = 90 - th;
    end
    
    S1rot = rotationx(-angle)*(S1-C)' + C';
    S2rot = rotationx(-angle)*(S2-C)' + C';
    E1rot = rotationx(angle)*(E1-S1)' + S1';
    E2rot = rotationx(angle)*(E2-S2)' + S2';
    H1rot = rotationx(angle)*(H1-S1)' + S1';
    H2rot = rotationx(angle)*(H2-S2)' + S2';

    p_plot1_rot = [S2rot E2rot];
    p_plot2_rot = [E2rot H2rot];
    p_plot3_rot = [S1rot E1rot];
    p_plot4_rot = [E1rot H1rot];

    line1 = plot3(p_plot1_rot(1,:), p_plot1_rot(2,:), p_plot1_rot(3,:), 'g','LineWidth', 2); 
    line2 = plot3(p_plot2_rot(1,:), p_plot2_rot(2,:), p_plot2_rot(3,:), 'r','LineWidth', 2); 
    line3 = plot3(p_plot3_rot(1,:), p_plot3_rot(2,:), p_plot3_rot(3,:), 'g','LineWidth', 2); 
    line4 = plot3(p_plot4_rot(1,:), p_plot4_rot(2,:), p_plot4_rot(3,:), 'r','LineWidth', 2); 

    vertices = [S1rot'; S2rot'; C];
    faces = [1 2 3];
    p1 = patch('Vertices', vertices, 'Faces', faces, 'FaceColor', 'b');

    pause(0.01);
    drawnow;
    delete(line1); delete(line2); delete(line3); delete(line4); delete(p1);
end

%% Central Torso along y
initial_position(9);
for th=0:1:90
    if th <= 45
        angle = th;
    else
        angle = 90 - th;
    end
    S1rot = rotationy(angle)*(S1-N)' + N';
    S2rot = rotationy(angle)*(S2-N)' + N';
    E1rot = rotationy(angle)*(E1-S1)' + S1';
    E2rot = rotationy(angle)*(E2-S2)' + S2';
    H1rot = rotationy(angle)*(H1-S1)' + S1';
    H2rot = rotationy(angle)*(H2-S2)' + S2';

    p_plot1_rot = [S2rot E2rot];
    p_plot2_rot = [E2rot H2rot];
    p_plot3_rot = [S1rot E1rot];
    p_plot4_rot = [E1rot H1rot];

    line1 = plot3(p_plot1_rot(1,:), p_plot1_rot(2,:), p_plot1_rot(3,:), 'g','LineWidth', 2); 
    line2 = plot3(p_plot2_rot(1,:), p_plot2_rot(2,:), p_plot2_rot(3,:), 'r','LineWidth', 2); 
    line3 = plot3(p_plot3_rot(1,:), p_plot3_rot(2,:), p_plot3_rot(3,:), 'g','LineWidth', 2); 
    line4 = plot3(p_plot4_rot(1,:), p_plot4_rot(2,:), p_plot4_rot(3,:), 'r','LineWidth', 2); 

    vertices = [S1rot'; S2rot'; C];
    faces = [1 2 3];
    p1 = patch('Vertices', vertices, 'Faces', faces, 'FaceColor', 'b');
    drawnow;
    pause(0.01);
    delete(line1); delete(line2); delete(line3); delete(line4); delete(p1);
end

%% Cental Torso along z
initial_position(9);
for th=0:1:90
    if th <= 45
        angle = th;
    else
        angle = 90 - th;
    end
    S1rot = rotationz(angle)*(S1-N)' + N';
    S2rot = rotationz(angle)*(S2-N)' + N';
    E1rot = rotationz(angle)*(E1-S1)' + S1';
    E2rot = rotationz(angle)*(E2-S2)' + S2';
    H1rot = rotationz(angle)*(H1-S1)' + S1';
    H2rot = rotationz(angle)*(H2-S2)' + S2';

    p_plot1_rot = [S2rot E2rot];
    p_plot2_rot = [E2rot H2rot];
    p_plot3_rot = [S1rot E1rot];
    p_plot4_rot = [E1rot H1rot];

    line1 = plot3(p_plot1_rot(1,:), p_plot1_rot(2,:), p_plot1_rot(3,:), 'g','LineWidth', 2); 
    line2 = plot3(p_plot2_rot(1,:), p_plot2_rot(2,:), p_plot2_rot(3,:), 'r','LineWidth', 2); 
    line3 = plot3(p_plot3_rot(1,:), p_plot3_rot(2,:), p_plot3_rot(3,:), 'g','LineWidth', 2); 
    line4 = plot3(p_plot4_rot(1,:), p_plot4_rot(2,:), p_plot4_rot(3,:), 'r','LineWidth', 2); 

    vertices = [S1rot'; S2rot'; C];
    faces = [1 2 3];
    p1 = patch('Vertices', vertices, 'Faces', faces, 'FaceColor', 'b');
    drawnow;
    pause(0.01);
    delete(line1); delete(line2); delete(line3); delete(line4); delete(p1);
end
initial_position(0);
%% Rotation matrices

function Rx = rotationx(theta)
    theta = deg2rad(theta);
    Rx = [1 0 0;0 cos(theta) -sin(theta);0 sin(theta) cos(theta)];
end

function Ry = rotationy(theta)
    theta = deg2rad(theta);
    Ry = [cos(theta) 0 sin(theta);0 1 0;-sin(theta) 0 cos(theta)];
end

function Rz = rotationz(theta)
    theta = deg2rad(theta);
    Rz = [cos(theta) -sin(theta) 0;sin(theta) cos(theta) 0;0 0 1];
end

%% Initial positions
function I = initial_position(num)

N = [0 0 0];
S1 = [N(1)+0.4 N(2) N(3)];
S2 = [N(1)-0.4 N(2) N(3)];
E1 = [S1(1) S1(2) S1(3)-0.4];
E2 = [S2(1) S2(2) S2(3)-0.4];
H1 = [E1(1) E1(2) E1(3)-0.4];
H2 = [E2(1) E2(2) E2(3)-0.4];
C = [N(1) N(2) N(3)-0.3];
T1 = [N(1)+0.3 N(2) N(3)-0.6];
T2 = [N(1)-0.3 N(2) N(3)-0.6];
K1 = [T1(1) T1(2) T1(3)-0.6];
K2 = [T2(1) T2(2) T2(3)-0.6];
L1 = [K1(1) K1(2) K1(3)-0.6];
L2 = [K2(1) K2(2) K2(3)-0.6];

if num~=5 && num~=9
p_plot = [S1' E1'];
plot3(p_plot(1,:), p_plot(2,:), p_plot(3,:), 'g','LineWidth', 2); 
hold on;
end

if num~=1 && num~=5 && num~=9
p_plot1 = [E1' H1'];
plot3(p_plot1(1,:), p_plot1(2,:), p_plot1(3,:), 'r','LineWidth', 2); 
hold on;
end

if num~=6 && num~=9
p_plot2 = [S2' E2'];
plot3(p_plot2(1,:), p_plot2(2,:), p_plot2(3,:), 'g','LineWidth', 2); 
hold on;
end

if num~=2 && num~=6 && num~=9
p_plot3 = [E2' H2'];
plot3(p_plot3(1,:), p_plot3(2,:), p_plot3(3,:), 'r','LineWidth', 2); 
hold on;
end

if num~=9
vertices = [S1; S2; C];
faces = [1 2 3];
patch('Vertices', vertices, 'Faces', faces, 'FaceColor', 'b');
end

vertices1 = [C; T1; T2];
faces1 = [1 2 3];
patch('Vertices', vertices1, 'Faces', faces1, 'FaceColor', 'b');

if num~=7
p_plot4 = [T1' K1'];
plot3(p_plot4(1,:), p_plot4(2,:), p_plot4(3,:), 'g','LineWidth', 2); 
hold on;
end

if num~=3 && num~=7
p_plot5 = [K1' L1'];
plot3(p_plot5(1,:), p_plot5(2,:), p_plot5(3,:), 'r','LineWidth', 2); 
hold on;
end

if num~=8
p_plot6 = [T2' K2'];
plot3(p_plot6(1,:), p_plot6(2,:), p_plot6(3,:), 'g','LineWidth', 2); 
hold on;
end

if num~=4 && num~=8
p_plot7 = [K2' L2'];
plot3(p_plot7(1,:), p_plot7(2,:), p_plot7(3,:), 'r','LineWidth', 2); 
hold on;
end

axis equal;
xlim([-2 2]); ylim([-2 2]); zlim([-2 2]);
view(-135,20);
drawnow;
grid on;
xlabel('X');
ylabel('Y');
zlabel('Z');
end
