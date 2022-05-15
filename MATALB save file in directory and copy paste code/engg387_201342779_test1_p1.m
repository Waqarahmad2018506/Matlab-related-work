function [a,b,c,J] = engg387_201342779_test1_p1(x,y)

%Name: Mariam Abdulla Khalil Mohamed Samea Almutawa
%Student ID: 201342779
%Description: Function solving for the least squares quadratic fit and corresponding cost function (J)
%Using polyfit to find coefficient (co):

co = polyfit(x,y,2);

a = co(3);
b = co(2);
c = co(1);

differencey = polyval(co,x);

J = sum((y-differencey).^2);
end
