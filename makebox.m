function [in out] = makebox(x, box_id, cue)

i = 1;
[r, ~] = size(box_id);
boxy=[-1 1 1 -1]*max(x)*1.2;

while i <= r
repelem_entry = repelem(box_id(i, :), 2);
box = repelem_entry(1, 1:4);
patch(box,boxy,cue, 'EdgeColor', 'none','FaceAlpha',0.1);
i = i+1;
end

end