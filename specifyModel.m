function [ y ] = specifyModel( app , randParams)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 0 means user sets the parameters , not
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% random

signal_label = app.signal_label;
t = app.t;
w = 2*pi*(app.f);
Tcycle = app.Tcycle;

if randParams == 1 % Exporting - random Param Values
    
   % for i=1:app.N %N different signals will be created
       % Random signal's parameters:
        alpha = randParameter(app.AlphaSlider.Limits(1),app.AlphaSlider.Limits(2));
        beta = randParameter(app.BetaSlider.Limits(1),app.BetaSlider.Limits(2));
        alpha3 = randParameter(app.Alpha3Slider.Limits(1),app.Alpha3Slider.Limits(2));
        alpha5 = randParameter(app.Alpha5Slider.Limits(1),app.Alpha5Slider.Limits(2));
        alpha7 = randParameter(app.Alpha7Slider.Limits(1),app.Alpha7Slider.Limits(2));
        tau = (1E-3)*randParameter(app.TauSlider.Limits(1),app.TauSlider.Limits(2));
        Fn = randParameter(app.FnSlider.Limits(1),app.FnSlider.Limits(2));
        k = randParameter(app.KSlider.Limits(1),app.KSlider.Limits(2));
        alpha_flicker = randParameter(app.AlphaFlickerSlider.Limits(1),app.AlphaFlickerSlider.Limits(2));
        
        [t1,t2] = rand_t1_t2(Tcycle,signal_label);

        % Create the signal
        [y] = createSignal(signal_label,t,w,alpha,alpha_flicker,beta,alpha3,alpha5,alpha7,tau,Fn,k,t1,t2);
        
        % Add signal to DB
        if isempty(app.DataBase(end).labels)
            app.DataBase(1).labels = signal_label;
            app.DataBase(1).signals = y;
        else
            app.DataBase(end+1).labels = signal_label;
            app.DataBase(end).signals = y;
        end
        % Radomize DB permutation :
        %app.DataBase(randperm(length(app.DataBase)));
        temp1 = app.DataBase(randperm(length(app.DataBase)));
        temp2 = temp1(randperm(length(temp1)));
        app.DataBase = temp2;

        %TODO? : ADD to the DB struct - parameter's values of each signal? that
        %might be good for the labeling or something
        
    %end% end of for
    
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    
else %  USER's GUI

    % TODO - maybe the varaible app.alpha, app.beta... are unneccessery!
    alpha = app.AlphaSlider.Value;
    beta = app.BetaSlider.Value;
    alpha3 = app.Alpha3Slider.Value;
    alpha5 = app.Alpha5Slider.Value;
    alpha7 = app.Alpha7Slider.Value;
    tau = (1E-3)*app.TauSlider.Value;% calcs in sec, GUI in ms
    Fn = app.FnSlider.Value;
    k = app.KSlider.Value;
    alpha_flicker = app.AlphaFlickerSlider.Value;
    
    t1 = (1E-3)*app.t1NumericEdit.Value;% calcs in sec, GUI in ms
    t2 = (1E-3)*app.t2NumericEdit.Value;% calcs in sec, GUI in ms
    
    [y] = createSignal(signal_label,t,w,alpha,alpha_flicker,beta,alpha3,alpha5,alpha7,tau,Fn,k,t1,t2);
    %ADD the plotting here??
    %
    
    
end % end of if


end %end of function

