t_0=10;

i=find(t==t_0);

x0=x(i)
y0=y(i)

plot(x,y,"g")
hold on
plot(x0,y0,'b*')
title("M2 trajectory plot ")
xlabel("x2")
ylabel("y2")

