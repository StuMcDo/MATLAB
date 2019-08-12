p = [1/2 1/2 1/6 0; 1/4 1/2 1/6 0; 1/4 0 1/2 1/2; 0 0 1/6 1/2];
r = [1 0 0 0]';
p1 = 1;
p2 = 0;
p3 = 0;
p4 = 0;
for i = 1:100
    s = p*r;
    p1 = [p1 s(1)];
    p2 = [p2 s(2)];
    p3 = [p3 s(3)];
    p4 = [p4 s(4)];
    r = s;
end
plot(p1,'r')
hold on
plot(p2,'g')
hold on
plot(p3,'b')
hold on
plot(p4,'c')