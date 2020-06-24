function [  ] = defaultOffVisibality( app )
%PARAMETERSVISIBALITY Summary of this function goes here
%   Detailed explanation goes here

app.PlotSignalButton.Visible = 'off'; % Optional

app.TimeDiff.Visible = 'off';

app.AlphaSlider.Visible = 'off';    app.AlphaSliderLabel.Visible = 'off';
app.AlphaFlickerSlider.Visible = 'off';    app.AlphaFlickerSliderLabel.Visible = 'off';
app.BetaSlider.Visible = 'off';     app.BetaSliderLabel.Visible = 'off';
app.Alpha3Slider.Visible = 'off';   app.Alpha3SliderLabel.Visible = 'off';
app.Alpha5Slider.Visible = 'off';   app.Alpha5SliderLabel.Visible = 'off';
app.Alpha7Slider.Visible = 'off';   app.Alpha7SliderLabel.Visible = 'off';
app.TauSlider.Visible = 'off';      app.TauSliderLabel.Visible = 'off'; 
app.FnSlider.Visible = 'off';       app.FnSliderLabel.Visible = 'off'; 
app.KSlider.Visible = 'off';        app.KSliderLabel.Visible = 'off';

app.t1NumericEdit.Visible = 'off';  app.t1NumericEditLabel.Visible = 'off';
app.t2NumericEdit.Visible = 'off';  app.t2NumericEditLabel.Visible = 'off';

end

