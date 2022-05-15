function [a,b,c,d,e,J] = engg387_201342779_test1_p2(x,y)

%Name: Mariam Abdulla Khalil Mohamed Samea Almutawa
%Student ID: 201342779
%Description: Function solving for the polynomial least squares quadratic fit and corresponding cost function (J)
%Using polyfit to find coefficient (co):

co = polyfit(x,y,4);

a = co(5);
b = co(4);
c = co(3);
d = co(2);
e = co(1);

differencey = polyval(co,x);
J = sum((y-differencey).^2);

end
