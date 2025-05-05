X1= input("enter input angle");
X2= input("enter input angle");
X3= input("enter input angle");
R1 = [1 0 0; 0 cos(X1) -sin(X3); 0 sin(X1) cos(X1)]
R2 = [cos(X2) 0 sin(X2); 0 1 0; -sin(X2) 0 cos(X2)]
R3 = [cos(X3) -sin(X3) 0; sin(X3) cos(X3) 0; 0 0 1]
PM = [0 0 0.6]
frame = input("Enter the Frame")
value = input("Enter the Value")
if(frame==1)
if(value==123)
R=R3*R2*R1
else (value==321)
R=R1*R2*R3
end
else
if(value==123)
R=R1*R2*R3
else(value==231)
R=R2*R3*R1
end
end
PF =R*transpose(PM)