function [ y ] = createSignal(disturb, t,w,alpha,alpha_flicker,beta,alpha3,alpha5,alpha7,tau,Fn,k,t1,t2 )
%CREATESIGNAL Summary of this function goes here
%   Detailed explanation goes here

    switch disturb
        case 'Noraml' % pure sine wave
            y = sin(w*t);
        %TODO:; Normal is not neccerly pure ! a pure + less thhan 0.1
        %alphaa also means normal !
            
        case 'Sag'
            %alpha ranges 0.1 to 0.9
            y=(1-alpha*((heaviside(t-t1)-heaviside(t-t2)))).*sin(w*t);
            
        case 'Swell'
            %alpha ranges 0.1 to 0.8
            y=(1+ alpha*((heaviside(t-t1)-heaviside(t-t2)))).*sin(w*t);
            
        case 'Interruption'
            %alpha ranges 0.9 to 1
            y=(1-alpha*((heaviside(t-t1)-heaviside(t-t2)))).*sin(w*t);
            
        case 'Harmonics'
            %alpha3,aplha5, alpha7 range from 0.05 to 0.15
            alpha1 = sqrt(1 - alpha3^2 - alpha5^2 - alpha7^2);
            y = alpha1*sin(w*t)+ alpha3*sin(3*w*t)+ alpha5*sin(5*w*t)+ alpha7*sin(7*w*t) ;
            
        case 'Oscillatory transient'
            %fn goes from 300 to 900
            
%            fn=500;%TODO - fn has a range %Hz
%            tau =  16*(10^-3);%TODO : tau has a range % sec
            
            y = sin(w*t)+ alpha.*(heaviside(t-t2)-heaviside(t-t1)).*exp( -(t-t1)/tau ).*sin(2*pi*Fn*(t-t1));
%            plot(y)
            
        case 'Sag+Harmonics'
            alpha1 = sqrt(1- alpha3^2-alpha5^2-alpha7^2);
            y = (1-alpha*((heaviside(t-t1)-heaviside(t-t2)))).*(alpha1* sin(w*t)+ alpha3*sin(3*w*t)+ alpha5*sin(5*w*t)+ alpha7*sin(7*w*t));
            
        case 'Swell+Harmonics'
            alpha1 = sqrt(1 - alpha3^2-alpha5^2-alpha7^2);
            y =(1+alpha*((heaviside(t-t1)-heaviside(t-t2)))).*(alpha1* sin(w*t)+ alpha3*sin(3*w*t)+ alpha5*sin(5*w*t)+ alpha7*sin(7*w*t));
            
        case 'Flicker'
            %alpha ranges 0.1 to 2
            %beta ranges 5 to 10
            y=(1+alpha_flicker*sin(beta*w*t)).*sin(w*t);
            
            %     case 'Voltage Fluctuations'
            %FORMULA IS MISSING
            
            %     case Power Frequency Variations
            %FORMULA IS MISSING
            
        case {'Spike','Notch'}
            sum = 0;
            for n=0:9
                sum = sum + k.*( heaviside(t-(t1+0.02*n))-heaviside(t-(t2+0.02*n)) );
            end
            if strcmp(disturb,'Spike')
                y = sin(w*t) + sign(w*t).*sum;
            else
                y = sin(w*t) - sign(w*t).*sum;
            end %of if 
            
        case 'Flicker+Harmonics'
            alpha1 = sqrt(1 - alpha3^2-alpha5^2-alpha7^2);
            y = (1+alpha_flicker*sin(beta*w*t)).*...
                (alpha1* sin(w*t)+ alpha3*sin(3*w*t)+ alpha5*sin(5*w*t)+ alpha7*sin(7*w*t));
        
        case 'Interruption+Harmonics'
            alpha1 = sqrt(1 - alpha3^2-alpha5^2-alpha7^2);
            y = (1-alpha*((heaviside(t-t1)-heaviside(t-t2)))).*...
                ( alpha1* sin(w*t)+ alpha3*sin(3*w*t)+ alpha5*sin(5*w*t)+ alpha7*sin(7*w*t) );
 
        case {'Flicker+Sag','Flicker+Swell'}

            if strcmp(disturb,'Flicker+Sag')
                y = (1+alpha_flicker*sin(beta*w*t)).*sin(w*t).*...
                    (1-alpha*((heaviside(t-t1)-heaviside(t-t2))));
            else %Flicker+Swell
                y = (1+alpha_flicker*sin(beta*w*t)).*sin(w*t).*...
                    (1+alpha*((heaviside(t-t1)-heaviside(t-t2))));
            end %of if
            
            %     otherwise %Pure Normal 50 Hz sine wave
            %         y=sin(w*t);
            %         title('Pure 50 Hz Sine wave')
            
    end %switch

end

