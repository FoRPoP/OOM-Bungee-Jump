function xs = movementFunc(ts)

    l = 30;
    extendedCable = false;
    
    xs = zeros(length(ts));
    for index = 1:length(ts)
        
        t = ts(index);
        if extendedCable
            xs(index) = -10*cos(0.99*(t-2.47))+24.5*sin(0.99*(t-2.47))+10;
            xs(index) = xs(index) + l;
        else
            xs(index) = (9.81*t.^2)/2;
            if xs(index) >= 30
                extendedCable = true;
            end
        end
    end
end
