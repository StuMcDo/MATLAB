p = [1/2 1/2 1/6 0 0; 1/4 1/2 1/6 0 0; 1/4 0 1/2 1/4 0; 0 0 1/6 1/2 0; 0 0 0 1/4 1];
r = [1 0 0 0 0]';
p1 = zeros(400,1);
p2 = zeros(400,1);
p3 = zeros(400,1);
p4 = zeros(400,1);
p5 = zeros(400,1);
for i = 1:400
    s = p*r;
    p1(i) = s(1);
    p2(i) = s(2);
    p3(i) = s(3);
    p4(i) = s(4);
    p5(i) = s(5);
    r = s;
end
plot(p1,'r')
hold on
plot(p2,'g')
hold on
plot(p3,'b')
hold on
plot(p4,'c')
hold on
plot(p5,'m')