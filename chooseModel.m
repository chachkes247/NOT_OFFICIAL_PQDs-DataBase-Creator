function [ parameters ] = chooseModel(  app  )
%INITPARAMTERS Summary of this function goes here
%   Detailed explanation goes here

% Parameters initial values :
% occurs in app designer

%%TODO : Set a min value - app.alpha=MinOfRange for AutoPlotting 

% Parameters Dynamic range :
switch app.signal_label

    case 'Noraml' % pure sine wave
        defaultOffVisibality(app); %TODO : maybe there is a way to write this function as along automatic command instead of a func
        %app.AlphaSlider.Limits = [1,100];
        
        
    case 'Sag'
        defaultOffVisibality(app);
        app.AlphaSlider.Visible = 'on';        app.AlphaSliderLabel.Visible = 'on';
        app.t1NumericEdit.Visible = 'on';  app.t1NumericEditLabel.Visible = 'on';
        app.t2NumericEdit.Visible = 'on';  app.t2NumericEditLabel.Visible = 'on';
        
        %alpha ranges 0.1 to 0.9
        app.AlphaSlider.Limits = [0.1,0.9];
        app.AlphaSlider.Value = app.AlphaSlider.Limits(1);
             
    case 'Swell'
        defaultOffVisibality(app);
        app.AlphaSlider.Visible = 'on';    app.AlphaSliderLabel.Visible = 'on';
        app.t1NumericEdit.Visible = 'on';  app.t1NumericEditLabel.Visible = 'on';
        app.t2NumericEdit.Visible = 'on';  app.t2NumericEditLabel.Visible = 'on';

        %alpha ranges 0.1 to 0.8
        app.AlphaSlider.Limits = [0.1,0.8];
        app.AlphaSlider.Value = app.AlphaSlider.Limits(1);
   
    case 'Interruption'
        defaultOffVisibality(app);
        app.AlphaSlider.Visible = 'on';    app.AlphaSliderLabel.Visible = 'on';
        app.t1NumericEdit.Visible = 'on';  app.t1NumericEditLabel.Visible = 'on';
        app.t2NumericEdit.Visible = 'on';  app.t2NumericEditLabel.Visible = 'on';
        
        %alpha ranges 0.9 to 1
        app.AlphaSlider.Limits = [0.9,1.0];
        app.AlphaSlider.Value = app.AlphaSlider.Limits(1);
        
    case 'Harmonics'
        defaultOffVisibality(app);
        app.Alpha3Slider.Visible = 'on';   app.Alpha3SliderLabel.Visible = 'on';
        app.Alpha5Slider.Visible = 'on';   app.Alpha5SliderLabel.Visible = 'on';
        app.Alpha7Slider.Visible = 'on';   app.Alpha7SliderLabel.Visible = 'on';
        
        %alpha3,aplha5, alpha7 range from 0.05 to 0.15
        app.Alpha3Slider.Limits = [0.05,0.15];
        app.Alpha3Slider.Value = app.Alpha3Slider.Limits(1);
        app.Alpha5Slider.Limits = [0.05,0.15];
        app.Alpha5Slider.Value = app.Alpha5Slider.Limits(1);
        app.Alpha7Slider.Limits = [0.05,0.15];
        app.Alpha7Slider.Value = app.Alpha7Slider.Limits(1);
        
        
    case 'Oscillatory transient'
        defaultOffVisibality(app);
        app.AlphaSlider.Visible = 'on';    app.AlphaSliderLabel.Visible = 'on';
        app.t1NumericEdit.Visible = 'on';  app.t1NumericEditLabel.Visible = 'on';
        app.t2NumericEdit.Visible = 'on';  app.t2NumericEditLabel.Visible = 'on';
        app.TauSlider.Visible = 'on';      app.TauSliderLabel.Visible = 'on';
        app.FnSlider.Visible = 'on';       app.FnSliderLabel.Visible = 'on';
        
        app.AlphaSlider.Limits = [0.1,0.8];
        app.AlphaSlider.Value = app.AlphaSlider.Limits(1);

        
    case 'Sag+Harmonics'
        defaultOffVisibality(app);
        app.AlphaSlider.Visible = 'on';    app.AlphaSliderLabel.Visible = 'on';
        app.Alpha3Slider.Visible = 'on';   app.Alpha3SliderLabel.Visible = 'on';
        app.Alpha5Slider.Visible = 'on';   app.Alpha5SliderLabel.Visible = 'on';
        app.Alpha7Slider.Visible = 'on';   app.Alpha7SliderLabel.Visible = 'on';
        app.t1NumericEdit.Visible = 'on';  app.t1NumericEditLabel.Visible = 'on';
        app.t2NumericEdit.Visible = 'on';  app.t2NumericEditLabel.Visible = 'on';
        %TODO : alpha limits...
        app.Alpha3Slider.Value = app.Alpha3Slider.Limits(1);
        app.Alpha5Slider.Limits = [0.05,0.15];
        app.Alpha5Slider.Value = app.Alpha5Slider.Limits(1);
        app.Alpha7Slider.Limits = [0.05,0.15];
        app.Alpha7Slider.Value = app.Alpha7Slider.Limits(1);
        %         alpha1= sqrt(1- alpha3^2-alpha5^2-alpha7^2);
        
        
    case 'Swell+Harmonics'
        defaultOffVisibality(app);
        app.AlphaSlider.Visible = 'on';    app.AlphaSliderLabel.Visible = 'on';
        app.Alpha3Slider.Visible = 'on';   app.Alpha3SliderLabel.Visible = 'on';
        app.Alpha5Slider.Visible = 'on';   app.Alpha5SliderLabel.Visible = 'on';
        app.Alpha7Slider.Visible = 'on';   app.Alpha7SliderLabel.Visible = 'on';
        app.t1NumericEdit.Visible = 'on';  app.t1NumericEditLabel.Visible = 'on';
        app.t2NumericEdit.Visible = 'on';  app.t2NumericEditLabel.Visible = 'on';
        %TODO : alpha limits...

        app.Alpha3Slider.Value = app.Alpha3Slider.Limits(1);
        app.Alpha5Slider.Limits = [0.05,0.15];
        app.Alpha5Slider.Value = app.Alpha5Slider.Limits(1);
        app.Alpha7Slider.Limits = [0.05,0.15];
        app.Alpha7Slider.Value = app.Alpha7Slider.Limits(1);
        %         alpha1= sqrt(1-alpha3^2-alpha5^2-alpha7^2);
        
        
    case 'Flicker'
        defaultOffVisibality(app);
        app.AlphaFlickerSlider.Visible = 'on';    app.AlphaFlickerSliderLabel.Visible = 'on';
        app.BetaSlider.Visible = 'on';     app.BetaSliderLabel.Visible = 'on';
        
        app.AlphaFlickerSlider.Limits = [0.1,0.2];
        app.AlphaFlickerSlider.Value = app.AlphaFlickerSlider.Limits(1);
        app.BetaSlider.Limits  = [5,20];
        app.BetaSlider.Value = app.BetaSlider.Limits(1);

    case {'Notch','Spike'}
        defaultOffVisibality(app);
        app.KSlider.Visible = 'on';        app.KSliderLabel.Visible = 'on';
        app.t1NumericEdit.Visible = 'on';  app.t1NumericEditLabel.Visible = 'on';
        app.t2NumericEdit.Visible = 'on';  app.t2NumericEditLabel.Visible = 'on';
        
        app.KSlider.Limits = [0.1,0.4];
        app.KSlider.Value = app.KSlider.Limits(1);
        
    case 'Flicker+Harmonics'
        defaultOffVisibality(app);
        app.AlphaFlickerSlider.Visible = 'on';    app.AlphaFlickerSliderLabel.Visible = 'on';
        app.BetaSlider.Visible = 'on';     app.BetaSliderLabel.Visible = 'on';
        app.Alpha3Slider.Visible = 'on';   app.Alpha3SliderLabel.Visible = 'on';
        app.Alpha5Slider.Visible = 'on';   app.Alpha5SliderLabel.Visible = 'on';
        app.Alpha7Slider.Visible = 'on';   app.Alpha7SliderLabel.Visible = 'on';
        
        app.AlphaFlickerSlider.Limits = [0.1,0.2];
        app.AlphaFlickerSlider.Value = app.AlphaFlickerSlider.Limits(1);
        app.BetaSlider.Limits  = [5,20];
        app.BetaSlider.Value = app.BetaSlider.Limits(1);
        app.Alpha3Slider.Value = app.Alpha3Slider.Limits(1);
        app.Alpha5Slider.Limits = [0.05,0.15];
        app.Alpha5Slider.Value = app.Alpha5Slider.Limits(1);
        app.Alpha7Slider.Limits = [0.05,0.15];
        app.Alpha7Slider.Value = app.Alpha7Slider.Limits(1);
        
    case 'Interruption+Harmonics'
        defaultOffVisibality(app);
        app.AlphaSlider.Visible = 'on';    app.AlphaSliderLabel.Visible = 'on';
        app.Alpha3Slider.Visible = 'on';   app.Alpha3SliderLabel.Visible = 'on';
        app.Alpha5Slider.Visible = 'on';   app.Alpha5SliderLabel.Visible = 'on';
        app.Alpha7Slider.Visible = 'on';   app.Alpha7SliderLabel.Visible = 'on';
        app.t1NumericEdit.Visible = 'on';  app.t1NumericEditLabel.Visible = 'on';
        app.t2NumericEdit.Visible = 'on';  app.t2NumericEditLabel.Visible = 'on';
        
        app.AlphaSlider.Limits = [0.9,1.0];
        app.AlphaSlider.Value = app.AlphaSlider.Limits(1);
        app.Alpha3Slider.Limits = [0.05,0.15];
        app.Alpha3Slider.Value = app.Alpha3Slider.Limits(1);
        app.Alpha5Slider.Limits = [0.05,0.15];
        app.Alpha5Slider.Value = app.Alpha5Slider.Limits(1);
        app.Alpha7Slider.Limits = [0.05,0.15];
        app.Alpha7Slider.Value = app.Alpha7Slider.Limits(1);
   
    case {'Flicker+Sag','Flicker+Swell'}
        defaultOffVisibality(app);
        app.AlphaSlider.Visible = 'on';    app.AlphaSliderLabel.Visible = 'on';
        app.AlphaFlickerSlider.Visible = 'on';    app.AlphaFlickerSliderLabel.Visible = 'on';
        app.BetaSlider.Visible = 'on';     app.BetaSliderLabel.Visible = 'on';
        app.t1NumericEdit.Visible = 'on';  app.t1NumericEditLabel.Visible = 'on';
        app.t2NumericEdit.Visible = 'on';  app.t2NumericEditLabel.Visible = 'on';
        
        app.AlphaFlickerSlider.Limits = [0.1,0.2];
        app.AlphaFlickerSlider.Value = app.AlphaFlickerSlider.Limits(1);
        app.BetaSlider.Limits  = [5,20];  
        app.BetaSlider.Value = app.BetaSlider.Limits(1);
        
        app.AlphaSlider.Limits = [0.1,0.9];
        app.AlphaSlider.Value = app.AlphaSlider.Limits(1);


       
end %switch

end

