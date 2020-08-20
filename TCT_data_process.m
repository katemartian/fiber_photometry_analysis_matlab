function [left_chamber_bout, center_bout, right_chamber_bout, left_cup_bout, right_cup_bout] = TCT_data_process(x)
%import data from Ethovision
%replace NaN with previous value
raw = x;
[r1, c1] = size(raw);
for i = 1:c1
[r,c] = find(isnan(raw(:,i)));
while sum(isnan(raw(:,i)))>0
raw(r,i) = raw(r-1,i);
end
end

%import time as 'time' and delete first row 
%time(1, :) = [];


%insert zero to first row
zer = [0 0 0 0 0];
raw_dif = [zer; raw];
raw_dif = diff(raw_dif);
left_chamber = raw_dif(:, 1);
center = raw_dif(:, 2);
right_chamber = raw_dif(:, 3);
left_cup = raw_dif(:, 4);
right_cup = raw_dif(:, 5);

left_chamber_entry = find(any(left_chamber>0,2));
left_chamber_exit = find(any(left_chamber<0,2));
[r, ~] = size(raw_dif);
if isequal(size(left_chamber_entry), size(left_chamber_exit))
    left_chamber_exit = left_chamber_exit;
else
    left_chamber_exit = [left_chamber_exit; r];
end

center_entry = find(any(center>0,2));
center_exit = find(any(center<0,2));
[r, ~] = size(raw_dif);
if isequal(size(center_entry), size(center_exit))
    center_exit = center_exit;
else
    center_exit = [center_exit; r];
end

right_chamber_entry = find(any(right_chamber>0,2));
right_chamber_exit = find(any(right_chamber<0,2));
[r, ~] = size(raw_dif);
if isequal(size(right_chamber_entry), size(right_chamber_exit))
    right_chamber_exit = right_chamber_exit;
else
    right_chamber_exit = [right_chamber_exit; r];
end

left_cup_entry = find(any(left_cup>0,2));
left_cup_exit = find(any(left_cup<0,2));
[r, ~] = size(raw_dif);
if isequal(size(left_cup_entry), size(left_cup_exit))
    left_cup_exit = left_cup_exit;
else
    left_cup_exit = [left_cup_exit; r];
end

right_cup_entry = find(any(right_cup>0,2));
right_cup_exit = find(any(right_cup<0,2));
[r, ~] = size(raw_dif);
if isequal(size(right_cup_entry), size(right_cup_exit))
    right_cup_exit = right_cup_exit;
else
    right_cup_exit = [right_cup_exit; r];
end

left_chamber_bout = [left_chamber_entry left_chamber_exit];
center_bout = [center_entry center_exit];
right_chamber_bout = [right_chamber_entry right_chamber_exit];
left_cup_bout = [left_cup_entry left_cup_exit];
right_cup_bout = [right_cup_entry right_cup_exit];

left_chamber_bout = left_chamber_bout*(1/29.97);
center_bout = center_bout*(1/29.97);
right_chamber_bout = right_chamber_bout*(1/29.97);
left_cup_bout = left_cup_bout*(1/29.97);
right_cup_bout = right_cup_bout*(1/29.97);
end
