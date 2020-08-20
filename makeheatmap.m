function [in out] = makeheatmap(x)

[r, ~] = size(x);

imagesc(x)
colorbar
xticks = [1 5086 10173 15259];
yticks = [1:1:r];
xticklabels = {'-5', '0 (Onset)', '5', '10'};
set(gca, 'XTick', xticks, 'XTickLabel', xticklabels, 'YTick', yticks);
xlabel('Time (sec)');
ylabel('Bout (n)');
pl = line([5086 5086],[0 r+1]);
pl.Color = 'r'
pl.LineWidth = 3;
pl.LineStyle = '--';

end