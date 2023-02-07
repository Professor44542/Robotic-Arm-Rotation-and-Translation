% Task:1 Draw a line in 2D and 3D environment using “line” command in matlab
clear all;
close all;
clearvars;
clc;
A=input(' Press "1" for Task 1: \n Press "2" for Task 2: \n Press "3" for Task 3: \n Press "4" for Task 4: \n Press "5" for Task 5: \n Press "6" for Task 6: \n Press "7" for Task 7: \n Press "8" for Task 8: \n')
if A==1
    disp('Task1: Draw a line in 2D and 3D environment using “line” command in matlab')
    disp('==========================================================================')
    figure
    line([0,0],[0,1,],[0,0],'color','b','Linewidth',2);
    line([1,0],[0,0],[0,0],'color','r','Linewidth',3);
    axis([-3 3 -3 3 -3 3])
% Task:2 Draw a Frame in 2D and 3D environment using “line” command in matlab.
elseif A==2
    disp('Task:2 Draw a Frame in 2D and 3D environment using “line” command in matlab.')
    disp('============================================================================')
    figure
    line([0,0],[0,1,],[0,0],'color','b','Linewidth',2);
    line([1,0],[0,0],[0,0],'color','r','Linewidth',3);
    line([0,0],[0,0],[0,1],'color','g','Linewidth',4);
    axis([-3 3 -3 3 -3 3])
% Task:3 Represent basic rotations using a rotated frame using “line” command in matlab. 
elseif A==3
    disp('Task:3 Represent basic rotations using a rotated frame using “line” command in matlab. ')
    disp('=======================================================================================')
    the=pi/4
    Rx=[1 0 0;0 cos(the) -sin(the);0 sin(the) cos(the)]
    R=Rx
    % x-axis fixed
    figure
    line([0,R(1,1)],[0,R(2,1)],[0,R(3,1)],'color','b','Linewidth',2);
    line([0,R(1,2)],[0,R(2,2)],[0,R(3,1)],'color','r','Linewidth',3);
    line([0,R(1,3)],[0,R(2,3)],[0,R(3,3)],'color','g','Linewidth',4);
    axis([-3 3 -3 3 -3 3])
    % y-axis fixed
    Ry=[cos(the) 0 sin(the);0 1 0;-sin(the) 0 cos(the)]
    M=Ry
    figure
    line([0,M(1,1)],[0,M(2,1)],[0,M(3,1)],'color','b','Linewidth',2);
    line([0,M(1,2)],[0,M(2,2)],[0,M(3,1)],'color','r','Linewidth',3);
    line([0,M(1,3)],[0,M(2,3)],[0,M(3,3)],'color','g','Linewidth',4);
    axis([-3 3 -3 3 -3 3])
    % z-axis fixed
    Rz=[cos(the) -sin(the) 0;sin(the) cos(the) 0;0 0 1]
    N=Rz
    figure
    line([0,N(1,1)],[0,N(2,1)],[0,N(3,1)],'color','b','Linewidth',2);
    line([0,N(1,2)],[0,N(2,2)],[0,N(3,1)],'color','r','Linewidth',3);
    line([0,N(1,3)],[0,N(2,3)],[0,N(3,3)],'color','g','Linewidth',4);
    axis([-3 3 -3 3 -3 3])
%  Task:4 Determinant of a rotation matrix 
elseif A==4
    disp(' Task:4 Determinant of a rotation matrix ')
    disp('========================================')
    the=pi/4
    Rx=[1 0 0;0 cos(the) -sin(the);0 sin(the) cos(the)];
    R=Rx
    Ry=[cos(the) 0 sin(the);0 1 0;-sin(the) 0 cos(the)];
    M=Ry
    Rz=[cos(the) -sin(the) 0;sin(the) cos(the) 0;0 0 1];
    N=Rz
    Det_of_R=det(R)
    Det_of_M=det(M)
    Det_of_N=det(N)
%  Task:5 Dot product of column vectors of a rotation matrix
elseif A==5
    disp('Task:5 Dot product of column vectors of a rotation matrix ')
    disp('===========================================================')
    the=pi/4;
    Rx=[1 0 0;0 cos(the) -sin(the);0 sin(the) cos(the)];
    R=Rx;
    Ry=[cos(the) 0 sin(the);0 1 0;-sin(the) 0 cos(the)];
    M=Ry;
    Rz=[cos(the) -sin(the) 0;sin(the) cos(the) 0;0 0 1];
    N=Rz;
    % For rotation matrix R
    disp('For rotation matrix "R"')
    % dotproduct of column 1 and column 2
    dot1=dot(R(:,1),R(:,2))
    % dotproduct of column 2 and column 3
    dot2=dot(R(:,2),R(:,3))
    % dotproduct of column 3 and column 1
    dot3=dot(R(:,3),R(:,1))
    
    % For rotation matrix M
    disp('For rotation matrix "M"')
    % dotproduct of column 1 and column 2
    dot1=dot(M(:,1),M(:,2))
    % dotproduct of column 2 and column 3
    dot2=dot(M(:,2),M(:,3))
    % dotproduct of column 3 and column 1
    dot3=dot(M(:,3),M(:,1))
    
    % For rotation matrix N
    disp('For rotation matrix "N"')
    % dotproduct of column 1 and column 2
    dot1=dot(N(:,1),N(:,2))
    % dotproduct of column 2 and column 3
    dot2=dot(N(:,2),N(:,3))
    % dotproduct of column 3 and column 1
    dot3=dot(N(:,3),N(:,1))
%  Task:6 Cross product of column vectors of a rotation matrix
elseif A==6
    disp(' Task:6 Cross product of column vectors of a rotation matrix ')
    disp('=============================================================')
    the=pi/4;
    Rx=[1 0 0;0 cos(the) -sin(the);0 sin(the) cos(the)];
    R=Rx;
    Ry=[cos(the) 0 sin(the);0 1 0;-sin(the) 0 cos(the)];
    M=Ry;
    Rz=[cos(the) -sin(the) 0;sin(the) cos(the) 0;0 0 1];
    N=Rz;
     disp('For rotation matrix "R"')
    % crossproduct of column 1 and column 2
    cross1=cross(R(:,1),R(:,2))
    % crossproduct of column 2 and column 3
    cross2=cross(R(:,2),R(:,3))
    % crossproduct of column 3 and column 1
    cross3=cross(R(:,3),R(:,1))
    
    disp('For rotation matrix "M"')
    % crossproduct of column 1 and column 2
    cross1=cross(M(:,1),M(:,2))
    % crossproduct of column 2 and column 3
    cross2=cross(M(:,2),M(:,3))
    % crossproduct of column 3 and column 1
    cross3=cross(M(:,3),M(:,1))
    
    disp('For rotation matrix "N"')
    % crossproduct of column 1 and column 2
    cross1=cross(N(:,1),N(:,2))
    % crossproduct of column 2 and column 3
    cross2=cross(N(:,2),N(:,3))
    % crossproduct of column 3 and column 1
    cross3=cross(N(:,3),N(:,1))
%  Task:7 Commutativity test for a rotation matrix 
elseif A==7
        the=pi/4;
    Rx=[1 0 0;0 cos(the) -sin(the);0 sin(the) cos(the)];
    Ry=[cos(the) 0 sin(the);0 1 0;-sin(the) 0 cos(the)];
    Rz=[cos(the) -sin(the) 0;sin(the) cos(the) 0;0 0 1];
    disp('Task:7 Commutativity test for a rotation matrix ')
    disp('================================================')
    comu1=Rx*Ry
    comu2=Ry*Rz
    comu3=Rz*Rx
%  Task:8 Represent a position vector using “line” command in matlab.
else
    disp('Task:8 Represent a position vector using “line” command in matlab.')
    disp('==================================================================')
    comu1 =[ 0.7071         0    0.7071;0.5000    0.7071   -0.5000; -0.5000    0.7071    0.5000]
    comu2 =[0.5000   -0.5000    0.7071;0.7071    0.7071         0;-0.5000    0.5000    0.7071]
    comu3 =[0.7071   -0.5000    0.5000;0.7071    0.5000   -0.5000;0    0.7071    0.7071]
    P=[1;1;1]
    p1=comu1*P
    p2=comu2*P
    p3=comu3*P
    % line 1
    figure
    line([0,p1(1,1)],[0,p1(2,1)],[0,p1(3,1)],'Linewidth',1,'Color','r');
    line([p1(1,1),p2(1,1)],[p1(2,1),p2(2,1)],[p1(3,1),p2(3,1)],'Linewidth',1.5,'Color','g');
    line([p2(1,1),p3(1,1)],[p2(2,1),p3(2,1)],[p2(3,1),p3(3,1)],'Linewidth',2,'Color','b');
    axis([-3 3 -3 3 -3 3])
end
