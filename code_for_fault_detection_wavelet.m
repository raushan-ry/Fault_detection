clc;
clear all;
open("fault_detection_in_transmission_line_wavelet.slx");
sim("fault_detection_in_transmission_line_wavelet.slx");

currentA = ans.current1.signals.values;
currentB = ans.current2.signals.values;
currentC = ans.current3.signals.values;

timeA = ans.current1.time;

[cA, LA] = wavedec(currentA, 1, "db4");
[cB, LB] = wavedec(currentB, 1, "db4");
[cC, LC] = wavedec(currentC, 1, "db4");
 
coefA = detcoef(cA, LA, 1);
coefB = detcoef(cB, LB, 1);
coefC = detcoef(cC, LC, 1);

sum = 0;
for i=1:length(coefA)
    sum = sum + coefA(i) + coefB(i) + coefC(i);
end

sum_of_all_coefs = int8((abs(sum)));
disp("sum of all coefs : " + sum_of_all_coefs)

if sum_of_all_coefs
    disp("Fault Detected")
else
    disp("No Fault Detected")
end