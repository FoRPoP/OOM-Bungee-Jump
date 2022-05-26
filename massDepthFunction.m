function xs = massDepthFunction(ms)

    k = 58.86;

    ts = zeros(length(ms));
    xs = zeros(length(ms));
    for index = 1:length(ms)
        ts(index) = (sqrt(ms(index))*(atan(-(18.92*sqrt(ms(index)))/(ms(index))) + pi))/(sqrt(k));
        xs(index) = -0.167*ms(index)*cos(sqrt(k/ms(index))*ts(index))+3.16*sqrt(ms(index))*sin(sqrt(k/ms(index))*ts(index))+10;
    end
end

