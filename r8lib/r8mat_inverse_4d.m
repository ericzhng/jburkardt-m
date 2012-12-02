function [ b, det ] = r8mat_inverse_4d ( a )

%*****************************************************************************80
%
%% R8MAT_INVERSE_4D inverts a 4 by 4 matrix using Cramer's rule.
%
%  Discussion:
%
%    If the determinant is zero, then A is singular, and does not have an
%    inverse.  In that case, B is simply set to zero, and a
%    message is printed.
%
%    If the determinant is nonzero, then its value is roughly an estimate
%    of how nonsingular the matrix A is.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    15 May 2005
%
%  Author:
%
%    John Burkardt
%
%  Parameters:
%
%    Input, real A(4,4), the matrix to be inverted.
%
%    Output, real B(4,4), the inverse of the matrix A.
%
%    Output, real DET, the determinant of the matrix A.
%

%
%  Compute the determinant of A.
%
  det = r8mat_det_4d ( a );
%
%  If the determinant is zero, bail out.
%
  if ( det == 0.0 )
    b(1:4,1:4) = 0.0;
    return
  end
%
%  Compute the entries of the inverse matrix using an explicit formula.
%
  b(1,1) = +( ...
        + a(2,2) * ( a(3,3) * a(4,4) - a(3,4) * a(4,3) ) ...
        + a(2,3) * ( a(3,4) * a(4,2) - a(3,2) * a(4,4) ) ...
        + a(2,4) * ( a(3,2) * a(4,3) - a(3,3) * a(4,2) ) ...
        ) / det;

  b(2,1) = -( ...
        + a(2,1) * ( a(3,3) * a(4,4) - a(3,4) * a(4,3) ) ...
        + a(2,3) * ( a(3,4) * a(4,1) - a(3,1) * a(4,4) ) ...
        + a(2,4) * ( a(3,1) * a(4,3) - a(3,3) * a(4,1) ) ...
        ) / det;

  b(3,1) = +( ...
        + a(2,1) * ( a(3,2) * a(4,4) - a(3,4) * a(4,2) ) ...
        + a(2,2) * ( a(3,4) * a(4,1) - a(3,1) * a(4,4) ) ...
        + a(2,4) * ( a(3,1) * a(4,2) - a(3,2) * a(4,1) ) ...
        ) / det;

  b(4,1) = -( ...
        + a(2,1) * ( a(3,2) * a(4,3) - a(3,3) * a(4,2) ) ...
        + a(2,2) * ( a(3,3) * a(4,1) - a(3,1) * a(4,3) ) ...
        + a(2,3) * ( a(3,1) * a(4,2) - a(3,2) * a(4,1) ) ...
        ) / det;

  b(1,2) = -( ...
        + a(1,2) * ( a(3,3) * a(4,4) - a(3,4) * a(4,3) ) ...
        + a(1,3) * ( a(3,4) * a(4,2) - a(3,2) * a(4,4) ) ...
        + a(1,4) * ( a(3,2) * a(4,3) - a(3,3) * a(4,2) ) ...
        ) / det;

  b(2,2) = +( ...
        + a(1,1) * ( a(3,3) * a(4,4) - a(3,4) * a(4,3) ) ...
        + a(1,3) * ( a(3,4) * a(4,1) - a(3,1) * a(4,4) ) ...
        + a(1,4) * ( a(3,1) * a(4,3) - a(3,3) * a(4,1) ) ...
        ) / det;

  b(3,2) = -( ...
        + a(1,1) * ( a(3,2) * a(4,4) - a(3,4) * a(4,2) ) ...
        + a(1,2) * ( a(3,4) * a(4,1) - a(3,1) * a(4,4) ) ...
        + a(1,4) * ( a(3,1) * a(4,2) - a(3,2) * a(4,1) ) ...
        ) / det;

  b(4,2) = +( ...
        + a(1,1) * ( a(3,2) * a(4,3) - a(3,3) * a(4,2) ) ...
        + a(1,2) * ( a(3,3) * a(4,1) - a(3,1) * a(4,3) ) ...
        + a(1,3) * ( a(3,1) * a(4,2) - a(3,2) * a(4,1) ) ...
        ) / det;

  b(1,3) = +( ...
        + a(1,2) * ( a(2,3) * a(4,4) - a(2,4) * a(4,3) ) ...
        + a(1,3) * ( a(2,4) * a(4,2) - a(2,2) * a(4,4) ) ...
        + a(1,4) * ( a(2,2) * a(4,3) - a(2,3) * a(4,2) ) ...
        ) / det;

  b(2,3) = -( ...
        + a(1,1) * ( a(2,3) * a(4,4) - a(2,4) * a(4,3) ) ...
        + a(1,3) * ( a(2,4) * a(4,1) - a(2,1) * a(4,4) ) ...
        + a(1,4) * ( a(2,1) * a(4,3) - a(2,3) * a(4,1) ) ...
        ) / det;

  b(3,3) = +( ...
        + a(1,1) * ( a(2,2) * a(4,4) - a(2,4) * a(4,2) ) ...
        + a(1,2) * ( a(2,4) * a(4,1) - a(2,1) * a(4,4) ) ...
        + a(1,4) * ( a(2,1) * a(4,2) - a(2,2) * a(4,1) ) ...
        ) / det;

  b(4,3) = -( ...
        + a(1,1) * ( a(2,2) * a(4,3) - a(2,3) * a(4,2) ) ...
        + a(1,2) * ( a(2,3) * a(4,1) - a(2,1) * a(4,3) ) ...
        + a(1,3) * ( a(2,1) * a(4,2) - a(2,2) * a(4,1) ) ...
        ) / det;

  b(1,4) = -( ...
        + a(1,2) * ( a(2,3) * a(3,4) - a(2,4) * a(3,3) ) ...
        + a(1,3) * ( a(2,4) * a(3,2) - a(2,2) * a(3,4) ) ...
        + a(1,4) * ( a(2,2) * a(3,3) - a(2,3) * a(3,2) ) ...
        ) / det;

  b(2,4) = +( ...
        + a(1,1) * ( a(2,3) * a(3,4) - a(2,4) * a(3,3) ) ...
        + a(1,3) * ( a(2,4) * a(3,1) - a(2,1) * a(3,4) ) ...
        + a(1,4) * ( a(2,1) * a(3,3) - a(2,3) * a(3,1) ) ...
        ) / det;

  b(3,4) = -( ...
        + a(1,1) * ( a(2,2) * a(3,4) - a(2,4) * a(3,2) ) ...
        + a(1,2) * ( a(2,4) * a(3,1) - a(2,1) * a(3,4) ) ...
        + a(1,4) * ( a(2,1) * a(3,2) - a(2,2) * a(3,1) ) ...
        ) / det;

  b(4,4) = +( ...
        + a(1,1) * ( a(2,2) * a(3,3) - a(2,3) * a(3,2) ) ...
        + a(1,2) * ( a(2,3) * a(3,1) - a(2,1) * a(3,3) ) ...
        + a(1,3) * ( a(2,1) * a(3,2) - a(2,2) * a(3,1) ) ...
        ) / det;

  return
end