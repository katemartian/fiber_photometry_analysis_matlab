function [in out] = makeline(x, box_id, cue)


boxy=[-1 1 1 -1]*max(x)*1.2;
i = 1;
[r, ~] = size(box_id);

while i <= r
    time_line = box_id(i, 1);
    pl = line([time_line time_line],[boxy(1, 1) boxy(1, 2)]);
    pl.Color = cue;
    pl.LineStyle = '--'; 
    i = i + 1;
end




end