PM = [1 0 0 1]
%initialize the transformation matrix as Identity
T = [1 0 0 0; 0 1 0 0; 0 0 1 0; 0 0 0 1]
frame = input("Enter the frame you want fixed(1) or mobile(2): ")
if(frame == 1)
%First Operation
op = input("Enter your operation as 1 for Rotation or 2 for Translation: ")
if(op == 1)
angle = input("Enter the input angle for Rotation: ")
axis = input("Enter the input axis of Roatation(from 1,2 or 3): ")
if(axis == 1)
HR = [1 0 0 0 ; 0 cos(angle) -sin(angle) 0; 0 sin(angle) cos(angle) 0; 0 0 0 1]
elseif(axis == 2)
HR = [cos(angle) 0 sin(angle) 0; 0 1 0 0; -sin(angle) 0 cos(angle) 0; 0 0 0 1]
elseif(axis == 3)
HR = [cos(angle) -sin(angle) 0 0; sin(angle) cos(angle) 0 0; 0 0 1 0; 0 0 0 1]
end
H1 = HR*T
else
dist = input("Enter the distance of Translation: ")
T_axis = input("Enter the Axis on which the previous translation has happned(1,2 or 3): ")
if(T_axis == 1)
HT = [1 0 0 dist; 0 1 0 0; 0 0 1 0; 0 0 0 1]
elseif(T_axis == 2)
HT = [1 0 0 0; 0 1 0 dist; 0 0 1 0; 0 0 0 1]
elseif(T_axis == 3)
HT = [1 0 0 0; 0 1 0 0; 0 0 1 dist; 0 0 0 1]
end
H1 = HT*T
end
%Second Operation
op = input("Enter your second operation as 1 for Rotation or 2 for Translation: ")
if(op == 1)
angle = input("Enter the input angle for Rotation: ")
axis = input("Enter the input axis of Roatation(from 1,2 or 3): ")
if(axis == 1)
HR = [1 0 0 0 ; 0 cos(angle) -sin(angle) 0; 0 sin(angle) cos(angle) 0; 0 0 0 1]
elseif(axis == 2)
HR = [cos(angle) 0 sin(angle) 0; 0 1 0 0; -sin(angle) 0 cos(angle) 0; 0 0 0 1]
elseif(axis == 3)
HR = [cos(angle) -sin(angle) 0 0; sin(angle) cos(angle) 0 0; 0 0 1 0; 0 0 0 1]
end
H2 = HR*T
else
dist = input("Enter the distance of Translation: ")
T_axis = input("Enter the Axis on which the previous translation has happned(1,2 or 3): ")
if(T_axis == 1)
HT = [1 0 0 dist; 0 1 0 0; 0 0 1 0; 0 0 0 1]
elseif(T_axis == 2)
HT = [1 0 0 0; 0 1 0 dist; 0 0 1 0; 0 0 0 1]
elseif(T_axis == 3)
HT = [1 0 0 0; 0 1 0 0; 0 0 1 dist; 0 0 0 1]
end
H2 = HT*T
end
H = H2*H1
PF = H*transpose(PM)
else
%First Operation
op = input("Enter your operation as 1 for Rotation or 2 for Translation: ")
if(op == 1)
angle = input("Enter the input angle for Rotation: ")
axis = input("Enter the input axis of Roatation(from 1,2 or 3): ")
if(axis == 1)
HR = [1 0 0 0 ; 0 cos(angle) -sin(angle) 0; 0 sin(angle) cos(angle) 0; 0 0 0 1]
elseif(axis == 2)
HR = [cos(angle) 0 sin(angle) 0; 0 1 0 0; -sin(angle) 0 cos(angle) 0; 0 0 0 1]
elseif(axis == 3)
HR = [cos(angle) -sin(angle) 0 0; sin(angle) cos(angle) 0 0; 0 0 1 0; 0 0 0 1]
end
H1 = T*HR
else
dist = input("Enter the distance of Translation: ")
T_axis = input("Enter the Axis on which the previous translation has happned(1,2 or 3): ")
if(T_axis == 1)
HT = [1 0 0 dist; 0 1 0 0; 0 0 1 0; 0 0 0 1]
elseif(T_axis == 2)
HT = [1 0 0 0; 0 1 0 dist; 0 0 1 0; 0 0 0 1]
elseif(T_axis == 3)
HT = [1 0 0 0; 0 1 0 0; 0 0 1 dist; 0 0 0 1]
end
H1 = T*HT
end
%Second Operation
op = input("Enter your second operation as 1 for Rotation or 2 for Translation: ")
if(op == 1)
angle = input("Enter the input angle for Rotation: ")
axis = input("Enter the input axis of Roatation(from 1,2 or 3): ")
if(axis == 1)
HR = [1 0 0 0 ; 0 cos(angle) -sin(angle) 0; 0 sin(angle) cos(angle) 0; 0 0 0 1]
elseif(axis == 2)
HR = [cos(angle) 0 sin(angle) 0; 0 1 0 0; -sin(angle) 0 cos(angle) 0; 0 0 0 1]
elseif(axis == 3)
HR = [cos(angle) -sin(angle) 0 0; sin(angle) cos(angle) 0 0; 0 0 1 0; 0 0 0 1]
end
H2 = T*HR
else
dist = input("Enter the distance of Translation: ")
T_axis = input("Enter the Axis on which the previous translation has happned(1,2 or 3): ")
if(T_axis == 1)
HT = [1 0 0 dist; 0 1 0 0; 0 0 1 0; 0 0 0 1]
elseif(T_axis == 2)
HT = [1 0 0 0; 0 1 0 dist; 0 0 1 0; 0 0 0 1]
elseif(T_axis == 3)
HT = [1 0 0 0; 0 1 0 0; 0 0 1 dist; 0 0 0 1]
end
H2 = T*HT
end
H = H1*H2
PF = H*transpose(PM)
end