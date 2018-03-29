%
% Status : main Dynare file
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

if isoctave || matlab_ver_less_than('8.6')
    clear all
else
    clearvars -global
    clear_persistent_variables(fileparts(which('dynare')), false)
end
tic0 = tic;
% Save empty dates and dseries objects in memory.
dates('initialize');
dseries('initialize');
% Define global variables.
global M_ options_ oo_ estim_params_ bayestopt_ dataset_ dataset_info estimation_info ys0_ ex0_
options_ = [];
M_.fname = 'ff';
M_.dynare_version = '4.5.3';
oo_.dynare_version = '4.5.3';
options_.dynare_version = '4.5.3';
%
% Some global variables initialization
%
global_initialization;
diary off;
diary('ff.log');
M_.exo_names = 'phiss';
M_.exo_names_tex = 'phiss';
M_.exo_names_long = 'phiss';
M_.endo_names = 'fi';
M_.endo_names_tex = 'fi';
M_.endo_names_long = 'fi';
M_.endo_names = char(M_.endo_names, 'fe');
M_.endo_names_tex = char(M_.endo_names_tex, 'fe');
M_.endo_names_long = char(M_.endo_names_long, 'fe');
M_.endo_names = char(M_.endo_names, 'qi');
M_.endo_names_tex = char(M_.endo_names_tex, 'qi');
M_.endo_names_long = char(M_.endo_names_long, 'qi');
M_.endo_names = char(M_.endo_names, 'qe');
M_.endo_names_tex = char(M_.endo_names_tex, 'qe');
M_.endo_names_long = char(M_.endo_names_long, 'qe');
M_.endo_names = char(M_.endo_names, 'thetai');
M_.endo_names_tex = char(M_.endo_names_tex, 'thetai');
M_.endo_names_long = char(M_.endo_names_long, 'thetai');
M_.endo_names = char(M_.endo_names, 'thetae');
M_.endo_names_tex = char(M_.endo_names_tex, 'thetae');
M_.endo_names_long = char(M_.endo_names_long, 'thetae');
M_.endo_names = char(M_.endo_names, 'vi');
M_.endo_names_tex = char(M_.endo_names_tex, 'vi');
M_.endo_names_long = char(M_.endo_names_long, 'vi');
M_.endo_names = char(M_.endo_names, 've');
M_.endo_names_tex = char(M_.endo_names_tex, 've');
M_.endo_names_long = char(M_.endo_names_long, 've');
M_.endo_names = char(M_.endo_names, 'g');
M_.endo_names_tex = char(M_.endo_names_tex, 'g');
M_.endo_names_long = char(M_.endo_names_long, 'g');
M_.endo_names = char(M_.endo_names, 'ho');
M_.endo_names_tex = char(M_.endo_names_tex, 'ho');
M_.endo_names_long = char(M_.endo_names_long, 'ho');
M_.endo_names = char(M_.endo_names, 'hoe');
M_.endo_names_tex = char(M_.endo_names_tex, 'hoe');
M_.endo_names_long = char(M_.endo_names_long, 'hoe');
M_.endo_names = char(M_.endo_names, 'ny');
M_.endo_names_tex = char(M_.endo_names_tex, 'ny');
M_.endo_names_long = char(M_.endo_names_long, 'ny');
M_.endo_names = char(M_.endo_names, 'noe');
M_.endo_names_tex = char(M_.endo_names_tex, 'noe');
M_.endo_names_long = char(M_.endo_names_long, 'noe');
M_.endo_names = char(M_.endo_names, 'noi');
M_.endo_names_tex = char(M_.endo_names_tex, 'noi');
M_.endo_names_long = char(M_.endo_names_long, 'noi');
M_.endo_names = char(M_.endo_names, 'usy');
M_.endo_names_tex = char(M_.endo_names_tex, 'usy');
M_.endo_names_long = char(M_.endo_names_long, 'usy');
M_.endo_names = char(M_.endo_names, 'usi');
M_.endo_names_tex = char(M_.endo_names_tex, 'usi');
M_.endo_names_long = char(M_.endo_names_long, 'usi');
M_.endo_names = char(M_.endo_names, 'usoi');
M_.endo_names_tex = char(M_.endo_names_tex, 'usoi');
M_.endo_names_long = char(M_.endo_names_long, 'usoi');
M_.endo_names = char(M_.endo_names, 'use');
M_.endo_names_tex = char(M_.endo_names_tex, 'use');
M_.endo_names_long = char(M_.endo_names_long, 'use');
M_.endo_names = char(M_.endo_names, 'Sy');
M_.endo_names_tex = char(M_.endo_names_tex, 'Sy');
M_.endo_names_long = char(M_.endo_names_long, 'Sy');
M_.endo_names = char(M_.endo_names, 'Soe');
M_.endo_names_tex = char(M_.endo_names_tex, 'Soe');
M_.endo_names_long = char(M_.endo_names_long, 'Soe');
M_.endo_names = char(M_.endo_names, 'Soi');
M_.endo_names_tex = char(M_.endo_names_tex, 'Soi');
M_.endo_names_long = char(M_.endo_names_long, 'Soi');
M_.endo_names = char(M_.endo_names, 'D');
M_.endo_names_tex = char(M_.endo_names_tex, 'D');
M_.endo_names_long = char(M_.endo_names_long, 'D');
M_.endo_names = char(M_.endo_names, 'omega');
M_.endo_names_tex = char(M_.endo_names_tex, 'omega');
M_.endo_names_long = char(M_.endo_names_long, 'omega');
M_.endo_names = char(M_.endo_names, 'c');
M_.endo_names_tex = char(M_.endo_names_tex, 'c');
M_.endo_names_long = char(M_.endo_names_long, 'c');
M_.endo_names = char(M_.endo_names, 'i');
M_.endo_names_tex = char(M_.endo_names_tex, 'i');
M_.endo_names_long = char(M_.endo_names_long, 'i');
M_.endo_names = char(M_.endo_names, 'pi');
M_.endo_names_tex = char(M_.endo_names_tex, 'pi');
M_.endo_names_long = char(M_.endo_names_long, 'pi');
M_.endo_names = char(M_.endo_names, 'tau');
M_.endo_names_tex = char(M_.endo_names_tex, 'tau');
M_.endo_names_long = char(M_.endo_names_long, 'tau');
M_.endo_names = char(M_.endo_names, 'y');
M_.endo_names_tex = char(M_.endo_names_tex, 'y');
M_.endo_names_long = char(M_.endo_names_long, 'y');
M_.endo_names = char(M_.endo_names, 'wy');
M_.endo_names_tex = char(M_.endo_names_tex, 'wy');
M_.endo_names_long = char(M_.endo_names_long, 'wy');
M_.endo_names = char(M_.endo_names, 'woi');
M_.endo_names_tex = char(M_.endo_names_tex, 'woi');
M_.endo_names_long = char(M_.endo_names_long, 'woi');
M_.endo_names = char(M_.endo_names, 'woe');
M_.endo_names_tex = char(M_.endo_names_tex, 'woe');
M_.endo_names_long = char(M_.endo_names_long, 'woe');
M_.endo_names = char(M_.endo_names, 'R');
M_.endo_names_tex = char(M_.endo_names_tex, 'R');
M_.endo_names_long = char(M_.endo_names_long, 'R');
M_.endo_names = char(M_.endo_names, 'Ygrowth');
M_.endo_names_tex = char(M_.endo_names_tex, 'Ygrowth');
M_.endo_names_long = char(M_.endo_names_long, 'Ygrowth');
M_.endo_names = char(M_.endo_names, 'Cgrowth');
M_.endo_names_tex = char(M_.endo_names_tex, 'Cgrowth');
M_.endo_names_long = char(M_.endo_names_long, 'Cgrowth');
M_.endo_names = char(M_.endo_names, 'phi');
M_.endo_names_tex = char(M_.endo_names_tex, 'phi');
M_.endo_names_long = char(M_.endo_names_long, 'phi');
M_.endo_partitions = struct();
M_.param_names = 'mi';
M_.param_names_tex = 'mi';
M_.param_names_long = 'mi';
M_.param_names = char(M_.param_names, 'me');
M_.param_names_tex = char(M_.param_names_tex, 'me');
M_.param_names_long = char(M_.param_names_long, 'me');
M_.param_names = char(M_.param_names, 'alpha');
M_.param_names_tex = char(M_.param_names_tex, 'alpha');
M_.param_names_long = char(M_.param_names_long, 'alpha');
M_.param_names = char(M_.param_names, 'mu');
M_.param_names_tex = char(M_.param_names_tex, 'mu');
M_.param_names_long = char(M_.param_names_long, 'mu');
M_.param_names = char(M_.param_names, 'd');
M_.param_names_tex = char(M_.param_names_tex, 'd');
M_.param_names_long = char(M_.param_names_long, 'd');
M_.param_names = char(M_.param_names, 'delta');
M_.param_names_tex = char(M_.param_names_tex, 'delta');
M_.param_names_long = char(M_.param_names_long, 'delta');
M_.param_names = char(M_.param_names, 'eta');
M_.param_names_tex = char(M_.param_names_tex, 'eta');
M_.param_names_long = char(M_.param_names_long, 'eta');
M_.param_names = char(M_.param_names, 'gamma');
M_.param_names_tex = char(M_.param_names_tex, 'gamma');
M_.param_names_long = char(M_.param_names_long, 'gamma');
M_.param_names = char(M_.param_names, 'sigma');
M_.param_names_tex = char(M_.param_names_tex, 'sigma');
M_.param_names_long = char(M_.param_names_long, 'sigma');
M_.param_names = char(M_.param_names, 'kappai');
M_.param_names_tex = char(M_.param_names_tex, 'kappai');
M_.param_names_long = char(M_.param_names_long, 'kappai');
M_.param_names = char(M_.param_names, 'kappae');
M_.param_names_tex = char(M_.param_names_tex, 'kappae');
M_.param_names_long = char(M_.param_names_long, 'kappae');
M_.param_names = char(M_.param_names, 'beta');
M_.param_names_tex = char(M_.param_names_tex, 'beta');
M_.param_names_long = char(M_.param_names_long, 'beta');
M_.param_names = char(M_.param_names, 'alphapi');
M_.param_names_tex = char(M_.param_names_tex, 'alphapi');
M_.param_names_long = char(M_.param_names_long, 'alphapi');
M_.param_names = char(M_.param_names, 'epsilon');
M_.param_names_tex = char(M_.param_names_tex, 'epsilon');
M_.param_names_long = char(M_.param_names_long, 'epsilon');
M_.param_names = char(M_.param_names, 'chi');
M_.param_names_tex = char(M_.param_names_tex, 'chi');
M_.param_names_long = char(M_.param_names_long, 'chi');
M_.param_names = char(M_.param_names, 'pibar');
M_.param_names_tex = char(M_.param_names_tex, 'pibar');
M_.param_names_long = char(M_.param_names_long, 'pibar');
M_.param_names = char(M_.param_names, 'by');
M_.param_names_tex = char(M_.param_names_tex, 'by');
M_.param_names_long = char(M_.param_names_long, 'by');
M_.param_names = char(M_.param_names, 'boi');
M_.param_names_tex = char(M_.param_names_tex, 'boi');
M_.param_names_long = char(M_.param_names_long, 'boi');
M_.param_names = char(M_.param_names, 'boe');
M_.param_names_tex = char(M_.param_names_tex, 'boe');
M_.param_names_long = char(M_.param_names_long, 'boe');
M_.param_names = char(M_.param_names, 'rho');
M_.param_names_tex = char(M_.param_names_tex, 'rho');
M_.param_names_long = char(M_.param_names_long, 'rho');
M_.param_names = char(M_.param_names, 'A');
M_.param_names_tex = char(M_.param_names_tex, 'A');
M_.param_names_long = char(M_.param_names_long, 'A');
M_.param_names = char(M_.param_names, 'se');
M_.param_names_tex = char(M_.param_names_tex, 'se');
M_.param_names_long = char(M_.param_names_long, 'se');
M_.param_names = char(M_.param_names, 'si');
M_.param_names_tex = char(M_.param_names_tex, 'si');
M_.param_names_long = char(M_.param_names_long, 'si');
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 1;
M_.endo_nbr = 35;
M_.param_nbr = 23;
M_.orig_endo_nbr = 35;
M_.aux_vars = [];
M_.Sigma_e = zeros(1, 1);
M_.Correlation_matrix = eye(1, 1);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = 1;
M_.det_shocks = [];
options_.block=0;
options_.bytecode=0;
options_.use_dll=0;
M_.hessian_eq_zero = 1;
erase_compiled_function('ff_static');
erase_compiled_function('ff_dynamic');
M_.orig_eq_nbr = 35;
M_.eq_nbr = 35;
M_.ramsey_eq_nbr = 0;
M_.lead_lag_incidence = [
 0 9 44;
 0 10 45;
 0 11 0;
 0 12 0;
 0 13 0;
 0 14 0;
 0 15 0;
 0 16 0;
 0 17 46;
 1 18 0;
 2 19 0;
 3 20 0;
 4 21 0;
 5 22 0;
 0 23 0;
 0 24 0;
 0 25 0;
 0 26 0;
 0 27 47;
 0 28 48;
 0 29 49;
 0 30 50;
 0 31 0;
 6 32 51;
 0 33 0;
 0 34 52;
 0 35 0;
 7 36 53;
 0 37 0;
 0 38 0;
 0 39 0;
 0 40 0;
 0 41 0;
 0 42 0;
 8 43 0;]';
M_.nstatic = 19;
M_.nfwrd   = 8;
M_.npred   = 6;
M_.nboth   = 2;
M_.nsfwrd   = 10;
M_.nspred   = 8;
M_.ndynamic   = 16;
M_.equations_tags = {
};
M_.static_and_dynamic_models_differ = 0;
M_.exo_names_orig_ord = [1:1];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(35, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(1, 1);
M_.params = NaN(23, 1);
M_.NNZDerivatives = [164; 0; -1];
M_.params( 1 ) = 0.35;
mi = M_.params( 1 );
M_.params( 2 ) = 0.35;
me = M_.params( 2 );
M_.params( 3 ) = 0.5;
alpha = M_.params( 3 );
M_.params( 4 ) = 0.0125;
mu = M_.params( 4 );
M_.params( 5 ) = 0.01;
d = M_.params( 5 );
M_.params( 22 ) = 0.0075;
se = M_.params( 22 );
M_.params( 6 ) = 0.8;
delta = M_.params( 6 );
M_.params( 23 ) = 0.015;
si = M_.params( 23 );
M_.params( 7 ) = 0.5;
eta = M_.params( 7 );
M_.params( 8 ) = 0.6;
gamma = M_.params( 8 );
M_.params( 9 ) = 2;
sigma = M_.params( 9 );
M_.params( 10 ) = 0.262708644;
kappai = M_.params( 10 );
M_.params( 11 ) = 0.351215661;
kappae = M_.params( 11 );
M_.params( 12 ) = 0.99;
beta = M_.params( 12 );
M_.params( 13 ) = 1.5;
alphapi = M_.params( 13 );
M_.params( 14 ) = 6;
epsilon = M_.params( 14 );
M_.params( 15 ) = 77;
chi = M_.params( 15 );
M_.params( 16 ) = 1;
pibar = M_.params( 16 );
M_.params( 17 ) = 0.6;
by = M_.params( 17 );
M_.params( 18 ) = 0.96;
boi = M_.params( 18 );
M_.params( 19 ) = 0.96;
boe = M_.params( 19 );
M_.params( 20 ) = 0.9;
rho = M_.params( 20 );
M_.params( 21 ) = 1;
A = M_.params( 21 );
%
% INITVAL instructions
%
options_.initval_file = 0;
oo_.steady_state( 1 ) = 0.30000000;
oo_.steady_state( 2 ) = 0.30000000;
oo_.steady_state( 3 ) = 0.30000000;
oo_.steady_state( 4 ) = 0.30000000;
oo_.steady_state( 5 ) = 1.00000000;
oo_.steady_state( 6 ) = 1.00000000;
oo_.steady_state( 7 ) = 0.04703100;
oo_.steady_state( 8 ) = 0.00344091;
oo_.steady_state( 9 ) = 0.00000000;
oo_.steady_state( 10 ) = 0.57446809;
oo_.steady_state( 11 ) = 0.32163824;
oo_.steady_state( 12 ) = 0.39808434;
oo_.steady_state( 13 ) = 0.31922960;
oo_.steady_state( 14 ) = 0.24161104;
oo_.steady_state( 15 ) = 0.03100414;
oo_.steady_state( 16 ) = 0.04703100;
oo_.steady_state( 17 ) = 0.01602687;
oo_.steady_state( 18 ) = 0.00344091;
oo_.steady_state( 19 ) = 1.49901356;
oo_.steady_state( 20 ) = 1.51749447;
oo_.steady_state( 21 ) = 0.09510449;
oo_.steady_state( 22 ) = 10.50817402;
oo_.steady_state( 23 ) = 0.34077237;
oo_.steady_state( 24 ) = 1.07863362;
oo_.steady_state( 25 ) = 0.01010101;
oo_.steady_state( 26 ) = 1.00000000;
oo_.steady_state( 27 ) = 0.83333333;
oo_.steady_state( 28 ) = 1.08661683;
oo_.steady_state( 29 ) = 0.82205415;
oo_.steady_state( 30 ) = 0.83192098;
oo_.steady_state( 31 ) = 1.14413112;
oo_.steady_state( 32 ) = 0.01010101;
oo_.steady_state( 33 ) = 0;
oo_.steady_state( 34 ) = 0;
oo_.exo_steady_state( 1 ) = 0.02;
oo_.steady_state( 35 ) = oo_.exo_steady_state(1);
if M_.exo_nbr > 0
	oo_.exo_simul = ones(M_.maximum_lag,1)*oo_.exo_steady_state';
end
if M_.exo_det_nbr > 0
	oo_.exo_det_simul = ones(M_.maximum_lag,1)*oo_.exo_det_steady_state';
end
oo_.dr.eigval = check(M_,options_,oo_);
steady;
%
% ENDVAL instructions
%
ys0_= oo_.steady_state;
ex0_ = oo_.exo_steady_state;
oo_.exo_steady_state( 1 ) = 0.011;
oo_.dr.eigval = check(M_,options_,oo_);
steady;
%
% SHOCKS instructions
%
M_.det_shocks = [ M_.det_shocks;
struct('exo_det',0,'exo_id',1,'multiplicative',0,'periods',1:20,'value',0.02) ];
M_.exo_det_length = 0;
options_.periods = 220;
perfect_foresight_setup;
perfect_foresight_solver;
plot((pi-1)*100);
save('ff_results.mat', 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save('ff_results.mat', 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save('ff_results.mat', 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save('ff_results.mat', 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save('ff_results.mat', 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save('ff_results.mat', 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save('ff_results.mat', 'oo_recursive_', '-append');
end


disp(['Total computing time : ' dynsec2hms(toc(tic0)) ]);
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
diary off
