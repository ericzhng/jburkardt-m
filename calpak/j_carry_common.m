function [ y, j ] = j_carry_common ( y, j )

%*****************************************************************************80
%
%% J_CARRY_COMMON carries year-days to years in a Common date.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    25 February 2013
%
%  Author:
%
%    John Burkardt
%
%  Parameters:
%
%    Input/output, integer Y, J, a YJ date.
%
  while ( 1 )

    days = year_length_common ( y );

    if ( j < days )
      break
    end

    j = j - days;
    y = y + 1;

  end

  return
end
