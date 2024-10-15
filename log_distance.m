% free space n = 2
% urban area n = 2.7 to 3.5
% shadowed urban area 3 to 5
% in building line-of-sight 1.6 to 1.8
% obstructed in building 4 to 6
% obstructed in factories 2 to 3

function pl_db = log_distance(pl_d0, n, d, d0)
  % use free_space to find pl_d0
  % pl_d0 = free_space(pt, gt, gr, lambda, f, d0);
  pl_db = pl_d0 + 10 * n * log(d/d0);
end
