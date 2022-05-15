function [time] = engg387_201342779_test1_p6(x,v)

%Name: Mariam Abdulla Khalil Mohamed Samea Almutawa
%Student ID: 201342779
%Description: Function solving for time required to cover trapezoid distance

assert(length(x)==length(v),'Unequal lengths of input vectors')
time = trapz(x,1./v);


end 