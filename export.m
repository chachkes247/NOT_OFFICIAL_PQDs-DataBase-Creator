function [  ] = export( app )
%EXPORT Summary of this function goes here
%   Detailed explanation goes here


y = app.y;
tempDB = app.DataBase;
for i=1:app.N
    %random
    %alpha ranges 0.1 to 0.9
    %minVal = 0.1;
    %maxVal = 0.9;
    %rand_val = randParameter(minVal,maxVal);
    
    tempDB.vectors{i} = specifyModel( App , 1 );%TODO add an option to determine an alpha value not by user !
    
end

save('tryFile.mat','tempDB'); %Save for each addition

end

