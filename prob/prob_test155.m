function prob_test155 ( )

%*****************************************************************************80
%
%% TEST155 tests VON_MISES_MEAN, VON_MISES_SAMPLE, VON_MISES_CIRCULAR_VARIANCE;
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
  nsample = 1000;
  seed = 123456789;

  fprintf ( 1, '\n' );
  fprintf ( 1, 'TEST155\n' );
  fprintf ( 1, '  For the Von Mises PDF:\n' );
  fprintf ( 1, '  VON_MISES_MEAN computes the mean;\n' );
  fprintf ( 1, '  VON_MISES_SAMPLE samples.\n' );
  fprintf ( 1, ...
    '  VON_MISES_CIRCULAR_VARIANCE computes the circular variance;\n' );

  a = 1.0;
  b = 2.0;

  fprintf ( 1, '\n' );
  fprintf ( 1, '  PDF parameter A =             %14f\n', a );
  fprintf ( 1, '  PDF parameter B =             %14f\n', b );

  check = von_mises_check ( a, b );

  if ( ~check );
    fprintf ( 1, '\n' );
    fprintf ( 1, 'TEST155 - Fatal error!\n' );
    fprintf ( 1, '  The parameters are not legal.\n' );
    return
  end

  mean = von_mises_mean ( a, b );
  variance = von_mises_circular_variance ( a, b );

  fprintf ( 1, '  PDF mean =              %14f\n', mean );
  fprintf ( 1, '  PDF circular variance = %14f\n', variance );

  for i = 1 : nsample
    [ x(i), seed ] = von_mises_sample ( a, b, seed );
  end

  mean = r8vec_mean ( nsample, x );
  variance = r8vec_circular_variance ( nsample, x );
  xmax = max ( x(1:nsample) );
  xmin = min ( x(1:nsample) );

  fprintf ( 1, '\n' );
  fprintf ( 1, '  Sample size =              %6d\n', nsample );
  fprintf ( 1, '  Sample mean =              %14f\n', mean );
  fprintf ( 1, '  Sample circular variance = %14f\n', variance );
  fprintf ( 1, '  Sample maximum =           %14f\n', xmax );
  fprintf ( 1, '  Sample minimum =           %14f\n', xmin );

  return
end