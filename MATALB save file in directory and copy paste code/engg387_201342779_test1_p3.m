function [a,b,J] = engg387_201342779_test1_p3(x,y)

%Name: Mariam Abdulla Khalil Mohamed Samea Almutawa
%Student ID: 201342779
%Description: Function solving for the polynomial least squares quadratic fit and corresponding cost function (J)
%Using polyfit to find coefficient (co):

xcbd = x.^4;

co = polyfit(xcbd,y,1);

a = co(2);
b = co(1);

differencey = polyval(co,xcbd);

J = sum((y-differencey).^2);

end