% Make bot move forward for secs seconds %
function move_fwd(secs, a, RIGHT_DIR, LEFT_DIR, RIGHT_EN, LEFT_EN, SPEED)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
t0 = tic; % Start timer
display('Moving straight...')
while toc(t0) < secs % Until secs seconds are up, make bot go forward
    a.digitalWrite(RIGHT_DIR,1) % Right Motor forward
    a.digitalWrite(LEFT_DIR,0) % Left Motor forward
    a.analogWrite(RIGHT_EN, SPEED) % Right Motor at SPEED/255th speed
    a.analogWrite(LEFT_EN, SPEED) % Left Motor at SPEED/255th speed
end
end

