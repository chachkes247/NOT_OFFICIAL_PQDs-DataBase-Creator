function [ answer_2] = GuideOrNot()
%UNTITLED12 Summary of this function goes here
%   Detailed explanation goes here

question1 = ['\fontsize{14}Welcome to the power quality disturbs EXPLORER & CREATOR.',...
            sprintf('\n'), 'Is this your first use of the app ?'];
answer_1 = questdlg(question1, ... 
                  'Welcome!', ...
                  'Yes','No',...
                   struct('Default','','Interpreter','tex')); 
% Handle response
if strcmp(answer_1,'No')
    answer_2 = 'No';
else
    question2 = ['\fontsize{14}Would you like a short tour?'];
    answer_2 = questdlg(question2, ...
                        'Welcome!', ...
                        'Yes','No',...
                        struct('Default','','Interpreter','tex'));   
end

end
