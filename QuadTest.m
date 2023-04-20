function QuadTest(p1,p2,p3,p4)
% QUADTEST is a wrapper for Tester, and you can put four palettes into it
% for comparison.
figure
subplot(2,2,1)
Tester(p1)
subplot(2,2,2)
Tester(p2)
subplot(2,2,3)
Tester(p3)
subplot(2,2,4)
Tester(p4)
end

