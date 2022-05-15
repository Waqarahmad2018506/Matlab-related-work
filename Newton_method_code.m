clc , clear all,
syms x

f(x)= 2*x+3*cos(x)-2.71^x%x - 5^(-x)%x - cos(x)  % Function

% differentiate the function
z = diff(f(x));     
df= inline(z);
 
x= 0 ; % Intial Guess 
n=0;  % number of itration
z=1;  % error between new and previous value 
error=0.00000001; %Allow able error

% Code for equation 1
 while abs(z)>error  % error must be less the allowable
     y=x; % Previous value store in Tem variable
     x=y-f(y)/df(y); % Equation 1
     n=n+1; % count term
     z=abs(double(x-y)); % find abs value
 end

 
 fprintf("The allowable error for the function is: %f", error)
 fprintf("\n\nIntial guess:   %d", 0)
 fprintf("\n\nThe Total Number of itration : %d\n", n)