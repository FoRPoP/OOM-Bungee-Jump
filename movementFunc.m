function xs = movementFunc(ts)

    l = 30;
    extendedCable = true;
    
    xs = zeros(length(ts));
    for index = 1:length(ts)
        
        t = ts(index);
        
        if t < 2.47
            xs(index) = (9.81*t.^2)/2;
        else
            if extendedCable
                counter1 = floor((t-2.47)/8.89619);
                xs(index) = -10*cos(0.99*(t-2.47-8.89619*(counter1)))+24.5*sin(0.99*(t-2.47-8.89619*(counter1)))+10;
                xs(index) = xs(index) + l;
                
                if xs(index) <= 30
                    extendedCable = false;
                end
            else
                
                counter1 = floor((t-6.42619)/8.89619);
                t = t - 6.42619 - 8.89619*counter1;
                xs(index) = (9.81*t.^2)/2 - 24.26*t;
                xs(index) = xs(index) + l;
                
                if xs(index) > 30
                    extendedCable = true;            
                end
            end
        end
        
    end
end
