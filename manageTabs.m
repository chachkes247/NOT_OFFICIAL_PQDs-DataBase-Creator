function [  ] = manageTabs( app )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
       
switch app.TabGroup.SelectedTab.Title
    case 'Current GUI`s signal'
        %SlidersVisibilty( app.CallingApp );
        app.CallingApp.Frequency.Visible = 'on';
        app.CallingApp.Noise.Visible ='on';
        app.CallingApp.NumOfCycles.Visible = 'on';
        app.CallingApp.NumOfCyclesLabel.Visible = 'on';
        app.CurSignalLabel.Visible = 'on';
        
    case {'A Specific Disturb' , 'All Disturbs'}
        %defaultOffVisibality(app.CallingApp);
        %app.CallingApp.UIAxes.
        app.CallingApp.Frequency.Visible = 'off';
        app.CallingApp.Noise.Visible ='off';
        app.CallingApp.NumOfCycles.Visible = 'off';
        app.CallingApp.NumOfCyclesLabel.Visible = 'off';
        app.CallingApp.NoiseSlider.Visible = 'off';
        app.CallingApp.NoiseSliderLabel.Visible = 'off';
        app.CallingApp.UIAxes.Visible='on';% TODO - on?
        app.NumOfVecLabel.Visible = 'on';
        if strcmp(app.TabGroup.SelectedTab.Title,'All Disturbs')
            app.CallingApp.UIAxes.Visible='off';
            app.NumOfVecLabel.Visible = 'off';
            app.CurSignalLabel.Visible = 'off';
        end
        
end %switch



end

