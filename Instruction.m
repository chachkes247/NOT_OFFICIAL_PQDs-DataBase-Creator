function [ dial ] = Instruction(  )
%SecondInstruction Summary of this function goes here
%   Detailed explanation goes here

StartPosition1 = [300,300];
positionBox1 = [StartPosition , 350 , 200];
positionTxt1 = [20 80 310 60];
positionBtn1 = [125 15 100 35];
txt_content1 = 'Disturb`s parameters can be set using sliders';

dial = dialog('Position',positionBox,'Name','Using the GUI');
dial.Color = [0 ,0.1 ,0.1];
txt = uicontrol('Parent',dial,...
    'Style','text',...
    'Position',positionTxt,...
    'String',txt_content);
txt.FontSize = 14;

btn = uicontrol('Parent',dial,...
    'Position',positionBtn,...
    'String','Got it',...
    'Callback','delete(gcf)');

end

