function [ n_data, df, lambda, x, fx ] = student_noncentral_cdf_values ( n_data )

%*****************************************************************************80
%
%% STUDENT_NONCENTRAL_CDF_VALUES returns values of the noncentral Student CDF.
%
%  Discussion:
%
%    In Mathematica, the function can be evaluated by:
%
%      Needs["Statistics`ContinuousDistributions`"]
%      dist = NoncentralStudentTDistribution [ df, lambda ]
%      CDF [ dist, x ]
%
%    Mathematica seems to have some difficulty computing this function
%    to the desired number of digits.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    19 September 2004
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
%    Output, integer DF, real LAMBDA, the parameters of the
%    function.
%
%    Output, real X, the argument of the function.
%
%    Output, real FX, the value of the function.
%
  n_max = 30;

  df_vec = [ ...
     1,  2,  3, ...
     1,  2,  3, ...
     1,  2,  3, ...
     1,  2,  3, ...
     1,  2,  3, ...
    15, 20, 25, ...
     1,  2,  3, ...
    10, 10, 10, ...
    10, 10, 10, ...
    10, 10, 10 ];

  fx_vec = [ ...
     0.8975836176504333E+00, ...
     0.9522670169E+00, ...
     0.9711655571887813E+00, ...
     0.8231218864E+00, ...
     0.9049021510E+00, ...
     0.9363471834E+00, ...
     0.7301025986E+00, ...
     0.8335594263E+00, ...
     0.8774010255E+00, ...
     0.5248571617E+00, ...
     0.6293856597E+00, ...
     0.6800271741E+00, ...
     0.20590131975E+00, ...
     0.2112148916E+00, ...
     0.2074730718E+00, ...
     0.9981130072E+00, ...
     0.9994873850E+00, ...
     0.9998391562E+00, ...
     0.168610566972E+00, ...
     0.16967950985E+00, ...
     0.1701041003E+00, ...
     0.9247683363E+00, ...
     0.7483139269E+00, ...
     0.4659802096E+00, ...
     0.9761872541E+00, ...
     0.8979689357E+00, ...
     0.7181904627E+00, ...
     0.9923658945E+00, ...
     0.9610341649E+00, ...
     0.8688007350E+00 ];

  lambda_vec = [ ...
     0.0E+00, ...
     0.0E+00, ...
     0.0E+00, ...
     0.5E+00, ...
     0.5E+00, ...
     0.5E+00, ...
     1.0E+00, ...
     1.0E+00, ...
     1.0E+00, ...
     2.0E+00, ...
     2.0E+00, ...
     2.0E+00, ...
     4.0E+00, ...
     4.0E+00, ...
     4.0E+00, ...
     7.0E+00, ...
     7.0E+00, ...
     7.0E+00, ...
     1.0E+00, ...
     1.0E+00, ...
     1.0E+00, ...
     2.0E+00, ...
     3.0E+00, ...
     4.0E+00, ...
     2.0E+00, ...
     3.0E+00, ...
     4.0E+00, ...
     2.0E+00, ...
     3.0E+00, ...
     4.0E+00 ];

  x_vec = [ ...
      3.00E+00, ...
      3.00E+00, ...
      3.00E+00, ...
      3.00E+00, ...
      3.00E+00, ...
      3.00E+00, ...
      3.00E+00, ...
      3.00E+00, ...
      3.00E+00, ...
      3.00E+00, ...
      3.00E+00, ...
      3.00E+00, ...
      3.00E+00, ...
      3.00E+00, ...
      3.00E+00, ...
     15.00E+00, ...
     15.00E+00, ...
     15.00E+00, ...
      0.05E+00, ...
      0.05E+00, ...
      0.05E+00, ...
      4.00E+00, ...
      4.00E+00, ...
      4.00E+00, ...
      5.00E+00, ...
      5.00E+00, ...
      5.00E+00, ...
      6.00E+00, ...
      6.00E+00, ...
      6.00E+00 ];

  if ( n_data < 0 )
    n_data = 0;
  end

  n_data = n_data + 1;

  if ( n_max < n_data )
    n_data = 0;
    df = 0;
    lambda = 0.0;
    x = 0.0;
    fx = 0.0;
  else
    df = df_vec(n_data);
    lambda = lambda_vec(n_data);
    x = x_vec(n_data);
    fx = fx_vec(n_data);
  end

  return
end
