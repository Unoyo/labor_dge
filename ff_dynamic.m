function [residual, g1, g2, g3] = ff_dynamic(y, x, params, steady_state, it_)
%
% Status : Computes dynamic model for Dynare
%
% Inputs :
%   y         [#dynamic variables by 1] double    vector of endogenous variables in the order stored
%                                                 in M_.lead_lag_incidence; see the Manual
%   x         [nperiods by M_.exo_nbr] double     matrix of exogenous variables (in declaration order)
%                                                 for all simulation periods
%   steady_state  [M_.endo_nbr by 1] double       vector of steady state values
%   params    [M_.param_nbr by 1] double          vector of parameter values in declaration order
%   it_       scalar double                       time period for exogenous variables for which to evaluate the model
%
% Outputs:
%   residual  [M_.endo_nbr by 1] double    vector of residuals of the dynamic model equations in order of 
%                                          declaration of the equations.
%                                          Dynare may prepend auxiliary equations, see M_.aux_vars
%   g1        [M_.endo_nbr by #dynamic variables] double    Jacobian matrix of the dynamic model equations;
%                                                           rows: equations in order of declaration
%                                                           columns: variables in order stored in M_.lead_lag_incidence followed by the ones in M_.exo_names
%   g2        [M_.endo_nbr by (#dynamic variables)^2] double   Hessian matrix of the dynamic model equations;
%                                                              rows: equations in order of declaration
%                                                              columns: variables in order stored in M_.lead_lag_incidence followed by the ones in M_.exo_names
%   g3        [M_.endo_nbr by (#dynamic variables)^3] double   Third order derivative matrix of the dynamic model equations;
%                                                              rows: equations in order of declaration
%                                                              columns: variables in order stored in M_.lead_lag_incidence followed by the ones in M_.exo_names
%
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

%
% Model equations
%

residual = zeros(35, 1);
T161 = y(32)/y(51);
T163 = T161^params(9);
T181 = (1-params(4))*(1-params(23))*(1-y(44)*params(7))*y(47)+params(4)*(1-params(22))*(1-params(7)*y(45))*y(48);
T203 = y(48)*(1-params(22))*(1-params(7)*y(45))-params(22)*params(6)*(params(7)*y(45)*y(48)-y(44)*params(7)*y(49)+y(50));
T287 = params(15)/2*(y(34)-params(16))^2;
lhs =y(9);
rhs =params(1)*y(13)^(1-params(3));
residual(1)= lhs-rhs;
lhs =y(10);
rhs =params(2)*y(14)^(1-params(3));
residual(2)= lhs-rhs;
lhs =y(11);
rhs =y(9)/y(13);
residual(3)= lhs-rhs;
lhs =y(12);
rhs =y(10)/y(14);
residual(4)= lhs-rhs;
lhs =y(13);
rhs =y(15)/y(24);
residual(5)= lhs-rhs;
lhs =y(14);
rhs =y(16)/y(26);
residual(6)= lhs-rhs;
lhs =(1+y(17))*y(19);
rhs =(1-params(5))*(y(2)-params(22)*params(6)*y(4))+params(4)*(1-y(1));
residual(7)= lhs-rhs;
lhs =(1+y(17))*y(18);
rhs =params(4)*(1-y(1))+(1-params(5))*y(1);
residual(8)= lhs-rhs;
lhs =y(17);
rhs =y(43)*(1-y(18))-params(5)*y(18);
residual(9)= lhs-rhs;
lhs =(1+y(17))*y(20);
rhs =(1-params(4))*(1+y(9)*params(23)-params(23))*y(3)+y(9)*(1-params(4))*(1-y(1)-y(3));
residual(10)= lhs-rhs;
lhs =(1+y(17))*y(21);
rhs =y(4)*(1-params(5))*(1-params(23)+y(10)*params(22)*(1-params(6)))+y(3)*params(4)*(1-params(23)+y(10)*params(22))+(1-y(1)-y(3))*y(10)*params(4)+y(10)*(1-params(5))*(y(2)-y(4));
residual(11)= lhs-rhs;
lhs =(1+y(17))*y(22);
rhs =(1-params(5))*(y(9)*params(23)+1-params(23))*y(5)+y(4)*y(9)*params(6)*(1-params(5))*params(22)+y(9)*(1-params(5))*(y(1)-y(2)-y(5));
residual(12)= lhs-rhs;
lhs =(1+y(17))*y(23);
rhs =(1-params(4))*(1+params(23)*y(3)-y(1)-y(3));
residual(13)= lhs-rhs;
lhs =(1+y(17))*y(25);
rhs =(1-params(5))*(y(1)+params(22)*params(6)*y(4)+params(23)*y(5)-y(2)-y(5));
residual(14)= lhs-rhs;
lhs =y(24);
rhs =y(23)+y(25);
residual(15)= lhs-rhs;
lhs =y(26)*(1+y(17));
rhs =params(4)*(1+params(22)*y(20)-y(1)-y(3))+(1-params(5))*(y(2)+y(4)*params(22)*(1-params(6))-y(4));
residual(16)= lhs-rhs;
lhs =y(27);
rhs =params(21)*y(35)-params(17)+params(12)*T163*T181;
residual(17)= lhs-rhs;
lhs =y(28);
rhs =y(35)*params(21)*(1+params(8))-params(19)+T163*(1-params(5))*params(12)*T203;
residual(18)= lhs-rhs;
lhs =y(29);
rhs =params(21)*y(35)-params(18)+y(49)*(1-y(44)*params(7))*T163*params(12)*(1-params(5))*(1-params(23));
residual(19)= lhs-rhs;
lhs =y(30);
rhs =params(19)-params(18)+T163*(1-params(5))*params(12)*(y(50)+params(7)*(y(45)*y(48)-y(44)*y(49)));
residual(20)= lhs-rhs;
lhs =params(10);
rhs =y(11)*(1-params(7))*(y(29)*y(31)+y(27)*(1-y(31)));
residual(21)= lhs-rhs;
lhs =params(11);
rhs =y(28)*y(12)*(1-params(7));
residual(22)= lhs-rhs;
lhs =y(31);
rhs =y(25)/y(24);
residual(23)= lhs-rhs;
lhs =T161^(-params(9));
rhs =params(12)*(1+y(33))/y(52);
residual(24)= lhs-rhs;
lhs =y(33);
rhs =params(16)/params(12)-1+params(13)*(y(34)-params(16));
residual(25)= lhs-rhs;
lhs =0;
rhs =1-params(14)-y(34)*(y(34)-params(16))*params(15)+y(35)*params(14)+y(52)*params(12)*T163*params(15)*(y(52)-params(16))*(1+y(46))*y(53)/y(36);
residual(26)= lhs-rhs;
lhs =y(36);
rhs =y(32)+y(15)*params(10)+y(16)*params(11)+y(36)*T287;
residual(27)= lhs-rhs;
lhs =y(36);
rhs =params(21)*(y(20)+y(22)+y(21)*(1+params(8)));
residual(28)= lhs-rhs;
lhs =y(37);
rhs =y(35)*params(21)*params(7)+params(17)*(1-params(7))+T163*params(12)*params(7)*(1-params(7))*(y(47)*(1-params(4))*(1-params(23))*y(44)+y(48)*params(4)*(1-params(22))*y(45));
residual(29)= lhs-rhs;
lhs =y(38);
rhs =y(35)*params(21)*params(7)+params(18)*(1-params(7))+y(49)*y(44)*T163*params(12)*(1-params(5))*(1-params(23))*params(7)*(1-params(7));
residual(30)= lhs-rhs;
lhs =y(39);
rhs =y(35)*params(21)*params(7)*(1+params(8))+params(19)*(1-params(7))+T163*params(12)*(1-params(5))*(1-params(7))*(params(22)*params(6)*(params(7)*y(45)*y(48)-y(44)*params(7)*y(49)+y(50))+y(48)*y(45)*params(7)*(1-params(22)));
residual(31)= lhs-rhs;
lhs =y(40);
rhs =(1+y(33))/y(52);
residual(32)= lhs-rhs;
lhs =y(41);
rhs =y(36)/y(7);
residual(33)= lhs-rhs;
lhs =y(42);
rhs =y(32)/y(6);
residual(34)= lhs-rhs;
lhs =y(43);
rhs =(1-params(20))*x(it_, 1)+params(20)*y(8);
residual(35)= lhs-rhs;
if nargout >= 2,
  g1 = zeros(35, 54);

  %
  % Jacobian matrix
  %

T553 = getPowerDeriv(T161,params(9),1);
T554 = 1/y(51)*T553;
T567 = getPowerDeriv(T161,(-params(9)),1);
T590 = T553*(-y(32))/(y(51)*y(51));
  g1(1,9)=1;
  g1(1,13)=(-(params(1)*getPowerDeriv(y(13),1-params(3),1)));
  g1(2,10)=1;
  g1(2,14)=(-(params(2)*getPowerDeriv(y(14),1-params(3),1)));
  g1(3,9)=(-(1/y(13)));
  g1(3,11)=1;
  g1(3,13)=(-((-y(9))/(y(13)*y(13))));
  g1(4,10)=(-(1/y(14)));
  g1(4,12)=1;
  g1(4,14)=(-((-y(10))/(y(14)*y(14))));
  g1(5,13)=1;
  g1(5,15)=(-(1/y(24)));
  g1(5,24)=(-((-y(15))/(y(24)*y(24))));
  g1(6,14)=1;
  g1(6,16)=(-(1/y(26)));
  g1(6,26)=(-((-y(16))/(y(26)*y(26))));
  g1(7,17)=y(19);
  g1(7,1)=params(4);
  g1(7,2)=(-(1-params(5)));
  g1(7,19)=1+y(17);
  g1(7,4)=(-((1-params(5))*(-(params(22)*params(6)))));
  g1(8,17)=y(18);
  g1(8,1)=(-(1-params(5)+(-params(4))));
  g1(8,18)=1+y(17);
  g1(9,17)=1;
  g1(9,18)=(-((-y(43))-params(5)));
  g1(9,43)=(-(1-y(18)));
  g1(10,9)=(-(y(3)*(1-params(4))*params(23)+(1-params(4))*(1-y(1)-y(3))));
  g1(10,17)=y(20);
  g1(10,1)=y(9)*(1-params(4));
  g1(10,3)=(-((1-params(4))*(1+y(9)*params(23)-params(23))-y(9)*(1-params(4))));
  g1(10,20)=1+y(17);
  g1(11,10)=(-(y(4)*(1-params(5))*params(22)*(1-params(6))+y(3)*params(22)*params(4)+params(4)*(1-y(1)-y(3))+(1-params(5))*(y(2)-y(4))));
  g1(11,17)=y(21);
  g1(11,1)=y(10)*params(4);
  g1(11,2)=(-(y(10)*(1-params(5))));
  g1(11,3)=(-(params(4)*(1-params(23)+y(10)*params(22))-y(10)*params(4)));
  g1(11,4)=(-((1-params(5))*(1-params(23)+y(10)*params(22)*(1-params(6)))-y(10)*(1-params(5))));
  g1(11,21)=1+y(17);
  g1(12,9)=(-(y(5)*(1-params(5))*params(23)+y(4)*params(6)*(1-params(5))*params(22)+(1-params(5))*(y(1)-y(2)-y(5))));
  g1(12,17)=y(22);
  g1(12,1)=(-(y(9)*(1-params(5))));
  g1(12,2)=y(9)*(1-params(5));
  g1(12,4)=(-(y(9)*params(6)*(1-params(5))*params(22)));
  g1(12,5)=(-((1-params(5))*(y(9)*params(23)+1-params(23))-y(9)*(1-params(5))));
  g1(12,22)=1+y(17);
  g1(13,17)=y(23);
  g1(13,1)=1-params(4);
  g1(13,3)=(-((1-params(4))*(params(23)-1)));
  g1(13,23)=1+y(17);
  g1(14,17)=y(25);
  g1(14,1)=(-(1-params(5)));
  g1(14,2)=1-params(5);
  g1(14,4)=(-((1-params(5))*params(22)*params(6)));
  g1(14,5)=(-((1-params(5))*(params(23)-1)));
  g1(14,25)=1+y(17);
  g1(15,23)=(-1);
  g1(15,24)=1;
  g1(15,25)=(-1);
  g1(16,17)=y(26);
  g1(16,1)=params(4);
  g1(16,2)=(-(1-params(5)));
  g1(16,3)=params(4);
  g1(16,20)=(-(params(22)*params(4)));
  g1(16,4)=(-((1-params(5))*(params(22)*(1-params(6))-1)));
  g1(16,26)=1+y(17);
  g1(17,44)=(-(params(12)*T163*y(47)*(1-params(4))*(1-params(23))*(-params(7))));
  g1(17,45)=(-(params(12)*T163*y(48)*params(4)*(1-params(22))*(-params(7))));
  g1(17,27)=1;
  g1(17,47)=(-(params(12)*T163*(1-params(4))*(1-params(23))*(1-y(44)*params(7))));
  g1(17,48)=(-(params(12)*T163*params(4)*(1-params(22))*(1-params(7)*y(45))));
  g1(17,32)=(-(T181*params(12)*T554));
  g1(17,51)=(-(T181*params(12)*T590));
  g1(17,35)=(-params(21));
  g1(18,44)=(-(T163*(1-params(5))*params(12)*(-(params(22)*params(6)*(-(params(7)*y(49)))))));
  g1(18,45)=(-(T163*(1-params(5))*params(12)*(y(48)*(1-params(22))*(-params(7))-params(22)*params(6)*params(7)*y(48))));
  g1(18,28)=1;
  g1(18,48)=(-(T163*(1-params(5))*params(12)*((1-params(22))*(1-params(7)*y(45))-params(22)*params(6)*params(7)*y(45))));
  g1(18,49)=(-(T163*(1-params(5))*params(12)*(-(params(22)*params(6)*(-(y(44)*params(7)))))));
  g1(18,50)=(-(T163*(1-params(5))*params(12)*(-(params(22)*params(6)))));
  g1(18,32)=(-(T203*(1-params(5))*params(12)*T554));
  g1(18,51)=(-(T203*(1-params(5))*params(12)*T590));
  g1(18,35)=(-(params(21)*(1+params(8))));
  g1(19,44)=(-(y(49)*T163*params(12)*(1-params(5))*(1-params(23))*(-params(7))));
  g1(19,29)=1;
  g1(19,49)=(-((1-y(44)*params(7))*T163*params(12)*(1-params(5))*(1-params(23))));
  g1(19,32)=(-(y(49)*(1-y(44)*params(7))*params(12)*(1-params(5))*(1-params(23))*T554));
  g1(19,51)=(-(y(49)*(1-y(44)*params(7))*params(12)*(1-params(5))*(1-params(23))*T590));
  g1(19,35)=(-params(21));
  g1(20,44)=(-(T163*(1-params(5))*params(12)*params(7)*(-y(49))));
  g1(20,45)=(-(T163*(1-params(5))*params(12)*params(7)*y(48)));
  g1(20,48)=(-(params(7)*y(45)*T163*(1-params(5))*params(12)));
  g1(20,49)=(-(T163*(1-params(5))*params(12)*params(7)*(-y(44))));
  g1(20,30)=1;
  g1(20,50)=(-(T163*(1-params(5))*params(12)));
  g1(20,32)=(-((y(50)+params(7)*(y(45)*y(48)-y(44)*y(49)))*(1-params(5))*params(12)*T554));
  g1(20,51)=(-((y(50)+params(7)*(y(45)*y(48)-y(44)*y(49)))*(1-params(5))*params(12)*T590));
  g1(21,11)=(-((1-params(7))*(y(29)*y(31)+y(27)*(1-y(31)))));
  g1(21,27)=(-(y(11)*(1-params(7))*(1-y(31))));
  g1(21,29)=(-(y(11)*(1-params(7))*y(31)));
  g1(21,31)=(-(y(11)*(1-params(7))*(y(29)-y(27))));
  g1(22,12)=(-(y(28)*(1-params(7))));
  g1(22,28)=(-(y(12)*(1-params(7))));
  g1(23,24)=(-((-y(25))/(y(24)*y(24))));
  g1(23,25)=(-(1/y(24)));
  g1(23,31)=1;
  g1(24,32)=1/y(51)*T567;
  g1(24,51)=T567*(-y(32))/(y(51)*y(51));
  g1(24,33)=(-(params(12)/y(52)));
  g1(24,52)=(-((-(params(12)*(1+y(33))))/(y(52)*y(52))));
  g1(25,33)=1;
  g1(25,34)=(-params(13));
  g1(26,46)=(-(y(52)*params(12)*T163*params(15)*(y(52)-params(16))*y(53)/y(36)));
  g1(26,32)=(-(y(53)*(1+y(46))*y(52)*(y(52)-params(16))*params(15)*params(12)*T554/y(36)));
  g1(26,51)=(-(y(53)*(1+y(46))*y(52)*(y(52)-params(16))*params(15)*params(12)*T590/y(36)));
  g1(26,34)=(y(34)-params(16))*params(15)+y(34)*params(15);
  g1(26,52)=(-(y(53)*(1+y(46))*(params(12)*T163*params(15)*(y(52)-params(16))+y(52)*params(12)*T163*params(15))/y(36)));
  g1(26,35)=(-params(14));
  g1(26,36)=(-((-(y(52)*params(12)*T163*params(15)*(y(52)-params(16))*(1+y(46))*y(53)))/(y(36)*y(36))));
  g1(26,53)=(-(y(52)*params(12)*T163*params(15)*(y(52)-params(16))*(1+y(46))/y(36)));
  g1(27,15)=(-params(10));
  g1(27,16)=(-params(11));
  g1(27,32)=(-1);
  g1(27,34)=(-(y(36)*params(15)/2*2*(y(34)-params(16))));
  g1(27,36)=1-T287;
  g1(28,20)=(-params(21));
  g1(28,21)=(-(params(21)*(1+params(8))));
  g1(28,22)=(-params(21));
  g1(28,36)=1;
  g1(29,44)=(-(T163*params(12)*params(7)*(1-params(7))*(1-params(4))*(1-params(23))*y(47)));
  g1(29,45)=(-(T163*params(12)*params(7)*(1-params(7))*params(4)*(1-params(22))*y(48)));
  g1(29,47)=(-(T163*params(12)*params(7)*(1-params(7))*(1-params(4))*(1-params(23))*y(44)));
  g1(29,48)=(-(T163*params(12)*params(7)*(1-params(7))*params(4)*(1-params(22))*y(45)));
  g1(29,32)=(-((y(47)*(1-params(4))*(1-params(23))*y(44)+y(48)*params(4)*(1-params(22))*y(45))*params(12)*params(7)*(1-params(7))*T554));
  g1(29,51)=(-((y(47)*(1-params(4))*(1-params(23))*y(44)+y(48)*params(4)*(1-params(22))*y(45))*params(12)*params(7)*(1-params(7))*T590));
  g1(29,35)=(-(params(21)*params(7)));
  g1(29,37)=1;
  g1(30,44)=(-(y(49)*T163*params(12)*(1-params(5))*(1-params(23))*params(7)*(1-params(7))));
  g1(30,49)=(-(y(44)*T163*params(12)*(1-params(5))*(1-params(23))*params(7)*(1-params(7))));
  g1(30,32)=(-(y(49)*y(44)*params(12)*(1-params(5))*(1-params(23))*params(7)*(1-params(7))*T554));
  g1(30,51)=(-(y(49)*y(44)*params(12)*(1-params(5))*(1-params(23))*params(7)*(1-params(7))*T590));
  g1(30,35)=(-(params(21)*params(7)));
  g1(30,38)=1;
  g1(31,44)=(-(T163*params(12)*(1-params(5))*(1-params(7))*params(22)*params(6)*(-(params(7)*y(49)))));
  g1(31,45)=(-(T163*params(12)*(1-params(5))*(1-params(7))*(params(22)*params(6)*params(7)*y(48)+y(48)*params(7)*(1-params(22)))));
  g1(31,48)=(-(T163*params(12)*(1-params(5))*(1-params(7))*(y(45)*params(7)*(1-params(22))+params(22)*params(6)*params(7)*y(45))));
  g1(31,49)=(-(T163*params(12)*(1-params(5))*(1-params(7))*params(22)*params(6)*(-(y(44)*params(7)))));
  g1(31,50)=(-(params(22)*params(6)*T163*params(12)*(1-params(5))*(1-params(7))));
  g1(31,32)=(-((params(22)*params(6)*(params(7)*y(45)*y(48)-y(44)*params(7)*y(49)+y(50))+y(48)*y(45)*params(7)*(1-params(22)))*params(12)*(1-params(5))*(1-params(7))*T554));
  g1(31,51)=(-((params(22)*params(6)*(params(7)*y(45)*y(48)-y(44)*params(7)*y(49)+y(50))+y(48)*y(45)*params(7)*(1-params(22)))*params(12)*(1-params(5))*(1-params(7))*T590));
  g1(31,35)=(-(params(21)*params(7)*(1+params(8))));
  g1(31,39)=1;
  g1(32,33)=(-(1/y(52)));
  g1(32,52)=(-((-(1+y(33)))/(y(52)*y(52))));
  g1(32,40)=1;
  g1(33,7)=(-((-y(36))/(y(7)*y(7))));
  g1(33,36)=(-(1/y(7)));
  g1(33,41)=1;
  g1(34,6)=(-((-y(32))/(y(6)*y(6))));
  g1(34,32)=(-(1/y(6)));
  g1(34,42)=1;
  g1(35,8)=(-params(20));
  g1(35,43)=1;
  g1(35,54)=(-(1-params(20)));

if nargout >= 3,
  %
  % Hessian matrix
  %

  g2 = sparse([],[],[],35,2916);
if nargout >= 4,
  %
  % Third order derivatives
  %

  g3 = sparse([],[],[],35,157464);
end
end
end
end
