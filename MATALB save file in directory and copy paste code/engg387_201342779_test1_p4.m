function [x1,x2] = engg387_201342779_test1_p4(x,y)

%Name: Mariam Abdulla Khalil Mohamed Samea Almutawa
%Student ID: 201342779
%Description: Function solving projectile's initial and final point
%Using polyfit to find coefficient (co):

co = polyfit(x,y,2);

r = roots(co);

x2 = (min(r)+max(r))/2;
x1 = max(r)-min(r);

end 
