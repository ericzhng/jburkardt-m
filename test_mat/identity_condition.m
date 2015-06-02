function value = identity_condition ( n )

%*****************************************************************************80
%
%% IDENTITY_CONDITION returns the L1 condition of the IDENTITY matrix.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    08 February 2015
%
%  Author:
%
%    John Burkardt
%
%  Parameters:
%
%    Input, integer N, the order of the matrix.
%
%    Output, real VALUE, the L1 condition.
%
  a_norm = 1.0;
  b_norm = 1.0;
  value = a_norm * b_norm;

  return
end