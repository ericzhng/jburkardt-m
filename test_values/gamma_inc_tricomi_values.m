function [ n_data, a, x, fx ] = gamma_inc_tricomi_values ( n_data )

%*****************************************************************************80
%
%% GAMMA_INC_TRICOMI_VALUES: values of Tricomi's incomplete Gamma function.
%
%  Discussion:
%
%    Tricomi's incomplete Gamma function is defined as:
%
%      1/Gamma(A) * 1/X^A * Integral ( 0 <= T <= X ) T^(A-1) * exp(-T) dT.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    11 April 2010
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
%    Output, real A, the parameter of the function.
%
%    Output, real X, the argument of the function.
%
%    Output, real FX, the value of the function.
%
  n_max = 20;

  a_vec = [ ...
     0.10E+00, ...
     0.10E+00, ...
     0.10E+00, ...
     0.50E+00, ...
     0.50E+00, ...
     0.50E+00, ...
     0.10E+01, ...
     0.10E+01, ...
     0.10E+01, ...
     0.11E+01, ...
     0.11E+01, ...
     0.11E+01, ...
     0.20E+01, ...
     0.20E+01, ...
     0.20E+01, ...
     0.60E+01, ...
     0.60E+01, ...
     0.11E+02, ...
     0.26E+02, ...
     0.41E+02  ];

  fx_vec = [ ...
    1.048292641463504E+00, ...
    1.024577737369574E+00, ...
    0.9493712443185374E+00, ...
    1.100793230316492E+00, ...
    0.8998911979655218E+00, ...
    0.5301656062431039E+00, ...
    0.9516258196404043E+00, ...
    0.6321205588285577E+00, ...
    0.1986524106001829E+00, ...
    0.9071784510537487E+00, ...
    0.5891809618706485E+00, ...
    0.1688269752193589E+00, ...
    0.4527034271637121E+00, ...
    0.1965220442795224E+00, ...
    0.02025928457705232E+00, ...
    0.0001721181724479739E+00, ... 
    3.280858070850586E-07, ...
    5.244396471821590E-14, ...
    2.013462926183376E-37, ...
    1.230623887499875E-68 ];

  x_vec = [ ...
     0.30E-01, ...
     0.30E+00, ...
     0.15E+01, ...
     0.75E-01, ...
     0.75E+00, ...
     0.35E+01, ...
     0.10E+00, ...
     0.10E+01, ...
     0.50E+01, ...
     0.10E+00, ... 
     0.10E+01, ...
     0.50E+01, ...
     0.15E+00, ...
     0.15E+01, ...
     0.70E+01, ...
     0.25E+01, ...
     0.12E+02, ...
     0.16E+02, ...
     0.25E+02, ...
     0.45E+02 ];

  if ( n_data < 0 )
    n_data = 0;
  end

  n_data = n_data + 1;

  if ( n_max < n_data )
    n_data = 0;
    a = 0.0;
    x = 0.0;
    fx = 0.0;
  else
    a = a_vec(n_data);
    x = x_vec(n_data);
    fx = fx_vec(n_data);
  end

  return
end
