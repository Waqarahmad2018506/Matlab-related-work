%% Measurement Results (unit: mm)e
Points=[75.048	12.019
66.332	44.536
42.542	68.323
10.004	77.000
-22.465	68.329
-46.265	44.514
-54.999  12.022
-46.275	-20.490
-22.475	-44.254
10.035	-52.955
42.524	-44.278
66.323	-20.458
75.030	12.034];


%% Find Centriod and Radius of circle

% Guess Center of the circle
C = [5 , 20];

% Guess Raduis of the circle 
R = 60;

% uncertainty of x and y coordinates is 20 µm convert to mm
k = 0.002;

%lenght of the Measurement Results 
l=length(Points);

%Matric A = [x1, y2, 1] there will same number of row as x have
A = [Points(:,1) Points(:,2) ones(l,1)];
%Matric A = [x1^2, y2^2] there will same number of row as x have
B = [Points(:,1).*Points(:,1) + Points(:,2).*Points(:,2)];
% solve equation for Unknown
X=pinv(A)*B;

% Find the value of center and radius
xc = X(1)/2;
yc = X(2)/2;
r = sqrt(4*X(3) + X(1)*X(1) + X(2)*X(2) )/2;

fprintf("\nThe Center of circle is: ( %f , %f ) ",xc,yc)
fprintf("\nThe Radius of circle is:  %f \n",r)
%% Uncertainty calculation 
% Add Uncertainity with point to get Uncertianty in centriod
x1=Points+k;
A = [x1(:,1) x1(:,2) ones(l,1)];
B = [x1(:,1).*x1(:,1) + x1(:,2).*x1(:,2)];
X=pinv(A)*B;
% Gives centriod when the Uncertianity is added
xc1 = X(1)/2;
yc1 = X(2)/2;
% Substract center from Uncertianity center
un_x= abs(xc1-xc);
un_y= abs(yc1-yc);
% Formula for Uncertianity of Radius
un_r= (k^2+k^2)^(1/2);
fprintf("\n\nUncertainty  in the Center of circle is: ( %f , %f ) ",un_x,un_y)
fprintf("\nThe Uncertainty  in the Radius of circle is:  %f \n",un_r)
