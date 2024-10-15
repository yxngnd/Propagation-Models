function L = free_space(pt, gt, gr, lambda, f, d, L)
  A = (lambda^2 * gr) / 4 * pi;
  Pr = ((pt * gt) / 4 * pi * d.^2) * A;
  L = 32.44 - 10 * log10(gt) - 10 * log10(gr) + 20 * log10(f) + 20 * log10(d);
end



