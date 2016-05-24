fileID = load('90To270.txt');
time = fileID(:,1);
pan = fileID(:,2);
tilt= fileID(:,3);

plot(time,[pan tilt])