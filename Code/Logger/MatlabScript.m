fileID = load('270To90Both100.txt');
time = fileID(:,1);
pan = fileID(:,2);
tilt = fileID(:,3);

fileID1 = load('270To90Both200.txt');
time1 = fileID1(:,1);
pan1 = fileID1(:,2);
tilt1 = fileID1(:,3);

figure(1)
subplot(2,1,1)
plot(time,[pan tilt])

subplot(2,1,2)
plot(time1,[pan1 tilt1])