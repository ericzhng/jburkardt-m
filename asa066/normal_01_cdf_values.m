function [ n_data, x, fx ] = normal_01_cdf_values ( n_data )

%*****************************************************************************80
%
%% NORMAL_01_CDF_VALUES returns some values of the Normal 01 CDF.
%
%  Discussion:
%
%    In Mathematica, the function can be evaluated by:
%
%      Needs["Statistics`ContinuousDistributions`"]
%      dist = NormalDistribution [ 0, 1 ]
%      CDF [ dist, x ]
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    14 February 2003
%
%  Author:
%
%    John Burkardt
%
%  Reference:
%
%    Milton Abramowitz and Irene Stegun,
%    Handbook of Mathematical Functions,
%    US Department of Commerce, 1964.
%
%    Stephen Wolfram,
%    The Mathematica Book,
%    Fourth Edition,
%    Wolfram Media / Cambridge University Press, 1999.
%
%  Parameters:
%
%    Input/output, integer N_DATA.  The user sets N_DATA to 0 before the
%    first call.  On each call, the routine increments N_DATA by 1, and
%    returns the corresponding data; when there is no more data, the
%    output value of N_DATA will be 0 again.
%
%    Output, real X, the argument of the function.
%
%    Output, real FX, the value of the function.
%
  n_max = 17;

  fx_vec = [ ...
     0.5000000000000000E+00, ...
     0.5398278372770290E+00, ...
     0.5792597094391030E+00, ...
     0.6179114221889526E+00, ...
     0.6554217416103242E+00, ...
     0.6914624612740131E+00, ...
     0.7257468822499270E+00, ...
     0.7580363477769270E+00, ...
     0.7881446014166033E+00, ...
     0.8159398746532405E+00, ...
     0.8413447460685429E+00, ...
     0.9331927987311419E+00, ...
     0.9772498680518208E+00, ...
     0.9937903346742239E+00, ...
     0.9986501019683699E+00, ...
     0.9997673709209645E+00, ...
     0.9999683287581669E+00 ];

  x_vec = [ ...
     0.0000000000000000E+00, ...  
     0.1000000000000000E+00, ...
     0.2000000000000000E+00, ...
     0.3000000000000000E+00, ...
     0.4000000000000000E+00, ...
     0.5000000000000000E+00, ...
     0.6000000000000000E+00, ...
     0.7000000000000000E+00, ...
     0.8000000000000000E+00, ...
     0.9000000000000000E+00, ...
     0.1000000000000000E+01, ...
     0.1500000000000000E+01, ...
     0.2000000000000000E+01, ...
     0.2500000000000000E+01, ...
     0.3000000000000000E+01, ...
     0.3500000000000000E+01, ...
     0.4000000000000000E+01 ];

  if ( n_data < 0 )
    n_data = 0;
  end

  n_data = n_data + 1;

  if ( n_max < n_data )
    n_data = 0;
    x = 0.0;
    fx = 0.0;
  else
    x = x_vec(n_data);
    fx = fx_vec(n_data);
  end

  return
end
