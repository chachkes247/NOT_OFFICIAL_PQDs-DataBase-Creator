% function [ legal ] = t1t2_limits( t1,t2,Tcycle,dbOrUser )
% %T1T2_LIMITS Summary of this function goes here
% %   Note : all data is in sec (not ms)
% 
% interval = abs(t2 - t1)
% 
% if dbOrUser == 1% Exporting - random Param Values
%     
% 
% 
% end    
% 
% if interval<Tcycle || interval>9*Tcycle 
%     %popout
%     legal = false;
% else
%     legal = true;
% end
% 
