%% Plot raw signal

figure(1)
subplot(2, 1, 1)
plot(Alldata(1, :), Alldata(2, :), 'k')
ylabel('405 nm');
xlim([10 max(Alldata(1, :))-10])
pbaspect([10 1 1])
subplot(2, 1, 2)
plot(Alldata(1, :), Alldata(3, :), 'k')
ylabel('465 nm');
xlabel('Time (sec)');
xlim([10 max(Alldata(1, :))-10])
pbaspect([10 1 1])

%% Plot each epocs

figure(2)
if assay_type == 'so_re'
    subplot(4, 1, 1)
    plot(time, dFF_3CT(1, :), 'k');
    ylabel('dFF (%)');
    title('Center habituation');
    pbaspect([4 1 1])
    subplot(4, 1, 2)
    plot(time, dFF_3CT(2, :), 'k');
    title('3-chamber habituation');
    ylabel('dFF (%)');
    pbaspect([4 1 1])
    subplot(4, 1, 3)
    plot(time, dFF_3CT(3, :), 'k');
    ylabel('dFF (%)');
    title('Social investigation (male vs object)');
    pbaspect([4 1 1])
    subplot(4, 1, 4)
    plot(time, dFF_3CT(4, :), 'k');
    ylabel('dFF (%)');
    title('Social recognition');
    xlabel('Time (sec)');
    pbaspect([4 1 1])
elseif assay_type == 'se_pr'
    subplot(3, 1, 1)
    plot(time, dFF_3CT(1, :), 'k');
    ylabel('dFF (%)');
    title('Center habituation');
    pbaspect([4 1 1])
    subplot(3, 1, 2)
    plot(time, dFF_3CT(2, :), 'k');
    title('3-chamber habituation');
    ylabel('dFF (%)');
    pbaspect([4 1 1])
    subplot(3, 1, 3)
    plot(time, dFF_3CT(3, :), 'k');
    ylabel('dFF (%)');
    title('Sexual preference');
    xlabel('Time (sec)');
    pbaspect([4 1 1])
else
    subplot(4, 1, 1)
    plot(time, dFF_3CT(1, :), 'k');
    ylabel('dFF (%)');
    title('Center habituation');
    pbaspect([4 1 1])
    subplot(4, 1, 2)
    plot(time, dFF_3CT(2, :), 'k');
    title('3-chamber habituation');
    ylabel('dFF (%)');
    pbaspect([4 1 1])
    subplot(4, 1, 3)
    plot(time, dFF_3CT(3, :), 'k');
    ylabel('dFF (%)');
    title('Social investigation (female vs object)');
    pbaspect([4 1 1])
    subplot(4, 1, 4)
    plot(time, dFF_3CT(4, :), 'k');
    ylabel('dFF (%)');
    title('Social Priority');
    xlabel('Time (sec)');
    pbaspect([4 1 1])
end

%% Colorcoding Plot
boxy=[-1 1 1 -1]*max(dFF_3CT(1, :))*1.2;

figure(3)
if assay_type == 'so_re'

    subplot(3, 1, 1)
    FP_findpeaks(dFF_3CT(2, :), time, A);
    plot(time, dFF_3CT(2, :), 'black');
    makebox(dFF_3CT(2, :), A.left_chamber_bout, A.leftcue);
    makebox(dFF_3CT(2, :), A.right_chamber_bout, A.rightcue);   
    makeline(dFF_3CT(2, :), A.left_cup_bout, A.leftcue);
    makeline(dFF_3CT(2, :), A.right_cup_bout, A.rightcue);   
    xlim([0 300]);
    %xlabel('Time (s)');
    ylabel('delta F/F (%)');
    title('Novel Male side (Purple) vs Familiar Male side (Cyan)');

    subplot(3, 1, 2)
    
    FP_findpeaks(dFF_3CT(3, :), time, B);
    plot(time, dFF_3CT(3, :), 'black');
    makebox(dFF_3CT(3, :), B.left_chamber_bout, B.leftcue);
    makebox(dFF_3CT(3, :), B.right_chamber_bout, B.rightcue);   
    makeline(dFF_3CT(3, :), B.left_cup_bout, B.leftcue);
    makeline(dFF_3CT(3, :), B.right_cup_bout, B.rightcue);   
    xlim([0 300]);
    %xlabel('Time (s)');
    ylabel('delta F/F (%)');
    title('Male (Cyan) vs NS (Green)');


    subplot(3, 1, 3)
    
    FP_findpeaks(dFF_3CT(4, :), time, C);
    plot(time, dFF_3CT(4, :), 'black');
    makebox(dFF_3CT(4, :), C.left_chamber_bout, C.leftcue);
    makebox(dFF_3CT(4, :), C.right_chamber_bout, C.rightcue);   
    makeline(dFF_3CT(4, :), C.left_cup_bout, C.leftcue);
    makeline(dFF_3CT(4, :), C.right_cup_bout, C.rightcue);   
    xlim([0 300]);
    %xlabel('Time (s)');
    ylabel('delta F/F (%)');
    title('Novel Male (Purple) vs Familiar Male (Cyan)');

elseif assay_type == 'se_pr'

    subplot(2, 1, 1)
    
    FP_findpeaks(dFF_3CT(2, :), time, A);
    plot(time, dFF_3CT(2, :), 'black');
    makebox(dFF_3CT(2, :), A.left_chamber_bout, A.leftcue);
    makebox(dFF_3CT(2, :), A.right_chamber_bout, A.rightcue);   
    makeline(dFF_3CT(2, :), A.left_cup_bout, A.leftcue);
    makeline(dFF_3CT(2, :), A.right_cup_bout, A.rightcue); 
    xlim([0 300]);
    %xlabel('Time (s)');
    ylabel('delta F/F (%)');
    title('Female side (Magenta) vs Male side (Cyan)');

    subplot(2, 1, 2)
    
    FP_findpeaks(dFF_3CT(3, :), time, B);
    plot(time, dFF_3CT(3, :), 'black');
    makebox(dFF_3CT(3, :), B.left_chamber_bout, B.leftcue);
    makebox(dFF_3CT(3, :), B.right_chamber_bout, B.rightcue);   
    makeline(dFF_3CT(3, :), B.left_cup_bout, B.leftcue);
    makeline(dFF_3CT(3, :), B.right_cup_bout, B.rightcue); 
    xlim([0 300]);
    %xlabel('Time (s)');
    ylabel('delta F/F (%)');
    title('Female (Magenta) vs Male (Cyan)');

else

    subplot(3, 1, 1)
    
    FP_findpeaks(dFF_3CT(2, :), time, A);
    plot(time, dFF_3CT(2, :), 'black');
    makebox(dFF_3CT(2, :), A.left_chamber_bout, C.leftcue);
    makebox(dFF_3CT(2, :), A.right_chamber_bout, C.rightcue);   
    makeline(dFF_3CT(2, :), A.left_cup_bout, C.leftcue);
    makeline(dFF_3CT(2, :), A.right_cup_bout, C.rightcue);  
    xlim([0 300]);
    %xlabel('Time (s)');
    ylabel('delta F/F (%)');
    title('Novel Male side (Purple) vs Familiar Male side (Cyan)');

    subplot(3, 1, 2)

    FP_findpeaks(dFF_3CT(3, :), time, B);
    plot(time, dFF_3CT(3, :), 'black');
    makebox(dFF_3CT(3, :), B.left_chamber_bout, B.leftcue);
    makebox(dFF_3CT(3, :), B.right_chamber_bout, B.rightcue);   
    makeline(dFF_3CT(3, :), B.left_cup_bout, B.leftcue);
    makeline(dFF_3CT(3, :), B.right_cup_bout, B.rightcue);   
    xlim([0 300]);
    %xlabel('Time (s)');
    ylabel('delta F/F (%)');
    title('Female (Magenta) vs NS (Green)');


    subplot(3, 1, 3)
    
    FP_findpeaks(dFF_3CT(4, :), time, C);
    plot(time, dFF_3CT(4, :), 'black');
    makebox(dFF_3CT(4, :), C.left_chamber_bout, C.leftcue);
    makebox(dFF_3CT(4, :), C.right_chamber_bout, C.rightcue);   
    makeline(dFF_3CT(4, :), C.left_cup_bout, C.leftcue);
    makeline(dFF_3CT(4, :), C.right_cup_bout, C.rightcue);   
    xlim([0 300]);
    %xlabel('Time (s)');
    ylabel('delta F/F (%)');
    title('Novel Male side (Cyan) vs Familiar Female side (Magenta)');
end
