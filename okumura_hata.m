function L = okumura_hata(f, d, hte, hre, city_size)
    % Okumura-Hata Path Loss Model
    % Inputs:
    % f - Frequency in MHz (150 <= f <= 1500)
    % d - Distance in km (1 <= d <= 100)
    % hte - Height of base station in meters (30 <= hte <= 200)
    % hre - Height of mobile receiver in meters (1 <= hre <= 10)
    % size - city size (0 = big, 1 = medium or small)

    if city_size == 0 % big city
      if f >= 300
        a = 3.2 * (log10(11.75 * hre))^2 - 4.97;
      else f <= 300
        a = 8.29 * (log10(1.54 * hre))^2 - 1.1;
      end
    elseif city_size == 1 % medium or small city
        a = (1.1 * log10(f) - 0.7)*hre - (1.56 * log10(f) - 0.8);
    else
        error('Invalid size.');
    end

    A = 69.55 + 26.16 * log10(f) - 13.82 * log10(hte) - a;
    B = (44.9 - 6.55 * log10(hte));

    % Path loss in dB
    L = A + B * log10(d);
end

