function [residual, g1, g2, g3] = ff_static(y, x, params)
%
% Status : Computes static model for Dynare
%
% Inputs : 
%   y         [M_.endo_nbr by 1] double    vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1] double     vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1] double   vector of parameter values in declaration order
%
% Outputs:
%   residual  [M_.endo_nbr by 1] double    vector of residuals of the static model equations 
%                                          in order of declaration of the equations.
%                                          Dynare may prepend or append auxiliary equations, see M_.aux_vars
%   g1        [M_.endo_nbr by M_.endo_nbr] double    Jacobian matrix of the static model equations;
%                                                       columns: variables in declaration order
%                                                       rows: equations in order of declaration
%   g2        [M_.endo_nbr by (M_.endo_nbr)^2] double   Hessian matrix of the static model equations;
%                                                       columns: variables in declaration order
%                                                       rows: equations in order of declaration
%   g3        [M_.endo_nbr by (M_.endo_nbr)^3] double   Third derivatives matrix of the static model equations;
%                                                       columns: variables in declaration order
%                                                       rows: equations in order of declaration
%
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

residual = zeros( 35, 1);

%
% Model equations
%

T263 = params(15)/2*(y(26)-params(16))^2;
lhs =y(1);
rhs =params(1)*y(5)^(1-params(3));
residual(1)= lhs-rhs;
lhs =y(2);
rhs =params(2)*y(6)^(1-params(3));
residual(2)= lhs-rhs;
lhs =y(3);
rhs =y(1)/y(5);
residual(3)= lhs-rhs;
lhs =y(4);
rhs =y(2)/y(6);
residual(4)= lhs-rhs;
lhs =y(5);
rhs =y(7)/y(16);
residual(5)= lhs-rhs;
lhs =y(6);
rhs =y(8)/y(18);
residual(6)= lhs-rhs;
lhs =(1+y(9))*y(11);
rhs =(1-params(5))*(y(11)-params(22)*params(6)*y(13))+params(4)*(1-y(10));
residual(7)= lhs-rhs;
lhs =(1+y(9))*y(10);
rhs =params(4)*(1-y(10))+(1-params(5))*y(10);
residual(8)= lhs-rhs;
lhs =y(9);
rhs =(1-y(10))*y(35)-params(5)*y(10);
residual(9)= lhs-rhs;
lhs =(1+y(9))*y(12);
rhs =y(12)*(1-params(4))*(1+y(1)*params(23)-params(23))+y(1)*(1-params(4))*(1-y(10)-y(12));
residual(10)= lhs-rhs;
lhs =(1+y(9))*y(13);
rhs =y(13)*(1-params(5))*(1-params(23)+y(2)*params(22)*(1-params(6)))+y(12)*params(4)*(1-params(23)+y(2)*params(22))+(1-y(10)-y(12))*y(2)*params(4)+y(2)*(1-params(5))*(y(11)-y(13));
residual(11)= lhs-rhs;
lhs =(1+y(9))*y(14);
rhs =y(14)*(1-params(5))*(y(1)*params(23)+1-params(23))+y(13)*y(1)*params(6)*(1-params(5))*params(22)+y(1)*(1-params(5))*(y(10)-y(11)-y(14));
residual(12)= lhs-rhs;
lhs =(1+y(9))*y(15);
rhs =(1-params(4))*(1+y(12)*params(23)-y(10)-y(12));
residual(13)= lhs-rhs;
lhs =(1+y(9))*y(17);
rhs =(1-params(5))*(y(10)+params(22)*params(6)*y(13)+params(23)*y(14)-y(11)-y(14));
residual(14)= lhs-rhs;
lhs =y(16);
rhs =y(15)+y(17);
residual(15)= lhs-rhs;
lhs =y(18)*(1+y(9));
rhs =params(4)*(1+params(22)*y(12)-y(10)-y(12))+(1-params(5))*(y(11)+y(13)*params(22)*(1-params(6))-y(13));
residual(16)= lhs-rhs;
lhs =y(19);
rhs =params(21)*y(27)-params(17)+params(12)*(y(19)*(1-params(4))*(1-params(23))*(1-y(1)*params(7))+params(4)*(1-params(22))*(1-y(2)*params(7))*y(20));
residual(17)= lhs-rhs;
lhs =y(20);
rhs =y(27)*params(21)*(1+params(8))-params(19)+(1-params(5))*params(12)*(y(20)*(1-params(22))*(1-y(2)*params(7))-params(22)*params(6)*(y(2)*params(7)*y(20)-y(1)*params(7)*y(21)+y(22)));
residual(18)= lhs-rhs;
lhs =y(21);
rhs =params(21)*y(27)-params(18)+y(21)*(1-y(1)*params(7))*params(12)*(1-params(5))*(1-params(23));
residual(19)= lhs-rhs;
lhs =y(22);
rhs =params(19)-params(18)+(1-params(5))*params(12)*(y(22)+params(7)*(y(2)*y(20)-y(1)*y(21)));
residual(20)= lhs-rhs;
lhs =params(10);
rhs =y(3)*(1-params(7))*(y(21)*y(23)+y(19)*(1-y(23)));
residual(21)= lhs-rhs;
lhs =params(11);
rhs =y(20)*y(4)*(1-params(7));
residual(22)= lhs-rhs;
lhs =y(23);
rhs =y(17)/y(16);
residual(23)= lhs-rhs;
lhs =1;
rhs =params(12)*(1+y(25))/y(26);
residual(24)= lhs-rhs;
lhs =y(25);
rhs =params(16)/params(12)-1+params(13)*(y(26)-params(16));
residual(25)= lhs-rhs;
lhs =0;
rhs =1-params(14)-y(26)*(y(26)-params(16))*params(15)+y(27)*params(14)+(1+y(9))*y(26)*(y(26)-params(16))*params(12)*params(15)*y(28)/y(28);
residual(26)= lhs-rhs;
lhs =y(28);
rhs =y(24)+y(7)*params(10)+y(8)*params(11)+y(28)*T263;
residual(27)= lhs-rhs;
lhs =y(28);
rhs =params(21)*(y(12)+y(14)+y(13)*(1+params(8)));
residual(28)= lhs-rhs;
lhs =y(29);
rhs =y(27)*params(21)*params(7)+params(17)*(1-params(7))+params(12)*params(7)*(1-params(7))*(y(19)*y(1)*(1-params(4))*(1-params(23))+y(20)*y(2)*params(4)*(1-params(22)));
residual(29)= lhs-rhs;
lhs =y(30);
rhs =y(27)*params(21)*params(7)+params(18)*(1-params(7))+y(21)*y(1)*params(12)*(1-params(5))*(1-params(23))*params(7)*(1-params(7));
residual(30)= lhs-rhs;
lhs =y(31);
rhs =y(27)*params(21)*params(7)*(1+params(8))+params(19)*(1-params(7))+params(12)*(1-params(5))*(1-params(7))*(params(22)*params(6)*(y(2)*params(7)*y(20)-y(1)*params(7)*y(21)+y(22))+y(20)*y(2)*params(7)*(1-params(22)));
residual(31)= lhs-rhs;
lhs =y(32);
rhs =(1+y(25))/y(26);
residual(32)= lhs-rhs;
lhs =y(33);
rhs =1;
residual(33)= lhs-rhs;
lhs =y(34);
rhs =1;
residual(34)= lhs-rhs;
lhs =y(35);
rhs =(1-params(20))*x(1)+y(35)*params(20);
residual(35)= lhs-rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
if nargout >= 2,
  g1 = zeros(35, 35);

  %
  % Jacobian matrix
  %

  g1(1,1)=1;
  g1(1,5)=(-(params(1)*getPowerDeriv(y(5),1-params(3),1)));
  g1(2,2)=1;
  g1(2,6)=(-(params(2)*getPowerDeriv(y(6),1-params(3),1)));
  g1(3,1)=(-(1/y(5)));
  g1(3,3)=1;
  g1(3,5)=(-((-y(1))/(y(5)*y(5))));
  g1(4,2)=(-(1/y(6)));
  g1(4,4)=1;
  g1(4,6)=(-((-y(2))/(y(6)*y(6))));
  g1(5,5)=1;
  g1(5,7)=(-(1/y(16)));
  g1(5,16)=(-((-y(7))/(y(16)*y(16))));
  g1(6,6)=1;
  g1(6,8)=(-(1/y(18)));
  g1(6,18)=(-((-y(8))/(y(18)*y(18))));
  g1(7,9)=y(11);
  g1(7,10)=params(4);
  g1(7,11)=1+y(9)-(1-params(5));
  g1(7,13)=(-((1-params(5))*(-(params(22)*params(6)))));
  g1(8,9)=y(10);
  g1(8,10)=1+y(9)-(1-params(5)+(-params(4)));
  g1(9,9)=1;
  g1(9,10)=(-((-y(35))-params(5)));
  g1(9,35)=(-(1-y(10)));
  g1(10,1)=(-(y(12)*(1-params(4))*params(23)+(1-params(4))*(1-y(10)-y(12))));
  g1(10,9)=y(12);
  g1(10,10)=y(1)*(1-params(4));
  g1(10,12)=1+y(9)-((1-params(4))*(1+y(1)*params(23)-params(23))-y(1)*(1-params(4)));
  g1(11,2)=(-(y(13)*(1-params(5))*params(22)*(1-params(6))+y(12)*params(22)*params(4)+params(4)*(1-y(10)-y(12))+(1-params(5))*(y(11)-y(13))));
  g1(11,9)=y(13);
  g1(11,10)=y(2)*params(4);
  g1(11,11)=(-(y(2)*(1-params(5))));
  g1(11,12)=(-(params(4)*(1-params(23)+y(2)*params(22))-y(2)*params(4)));
  g1(11,13)=1+y(9)-((1-params(5))*(1-params(23)+y(2)*params(22)*(1-params(6)))-y(2)*(1-params(5)));
  g1(12,1)=(-(y(14)*(1-params(5))*params(23)+y(13)*params(6)*(1-params(5))*params(22)+(1-params(5))*(y(10)-y(11)-y(14))));
  g1(12,9)=y(14);
  g1(12,10)=(-(y(1)*(1-params(5))));
  g1(12,11)=y(1)*(1-params(5));
  g1(12,13)=(-(y(1)*params(6)*(1-params(5))*params(22)));
  g1(12,14)=1+y(9)-((1-params(5))*(y(1)*params(23)+1-params(23))-y(1)*(1-params(5)));
  g1(13,9)=y(15);
  g1(13,10)=1-params(4);
  g1(13,12)=(-((1-params(4))*(params(23)-1)));
  g1(13,15)=1+y(9);
  g1(14,9)=y(17);
  g1(14,10)=(-(1-params(5)));
  g1(14,11)=1-params(5);
  g1(14,13)=(-((1-params(5))*params(22)*params(6)));
  g1(14,14)=(-((1-params(5))*(params(23)-1)));
  g1(14,17)=1+y(9);
  g1(15,15)=(-1);
  g1(15,16)=1;
  g1(15,17)=(-1);
  g1(16,9)=y(18);
  g1(16,10)=params(4);
  g1(16,11)=(-(1-params(5)));
  g1(16,12)=(-(params(4)*(params(22)-1)));
  g1(16,13)=(-((1-params(5))*(params(22)*(1-params(6))-1)));
  g1(16,18)=1+y(9);
  g1(17,1)=(-(params(12)*y(19)*(1-params(4))*(1-params(23))*(-params(7))));
  g1(17,2)=(-(params(12)*y(20)*params(4)*(1-params(22))*(-params(7))));
  g1(17,19)=1-params(12)*(1-params(4))*(1-params(23))*(1-y(1)*params(7));
  g1(17,20)=(-(params(12)*params(4)*(1-params(22))*(1-y(2)*params(7))));
  g1(17,27)=(-params(21));
  g1(18,1)=(-((1-params(5))*params(12)*(-(params(22)*params(6)*(-(params(7)*y(21)))))));
  g1(18,2)=(-((1-params(5))*params(12)*(y(20)*(1-params(22))*(-params(7))-params(22)*params(6)*params(7)*y(20))));
  g1(18,20)=1-(1-params(5))*params(12)*((1-params(22))*(1-y(2)*params(7))-params(22)*params(6)*y(2)*params(7));
  g1(18,21)=(-((1-params(5))*params(12)*(-(params(22)*params(6)*(-(y(1)*params(7)))))));
  g1(18,22)=(-((1-params(5))*params(12)*(-(params(22)*params(6)))));
  g1(18,27)=(-(params(21)*(1+params(8))));
  g1(19,1)=(-(y(21)*params(12)*(1-params(5))*(1-params(23))*(-params(7))));
  g1(19,21)=1-(1-y(1)*params(7))*params(12)*(1-params(5))*(1-params(23));
  g1(19,27)=(-params(21));
  g1(20,1)=(-((1-params(5))*params(12)*params(7)*(-y(21))));
  g1(20,2)=(-((1-params(5))*params(12)*params(7)*y(20)));
  g1(20,20)=(-(y(2)*params(7)*(1-params(5))*params(12)));
  g1(20,21)=(-((1-params(5))*params(12)*params(7)*(-y(1))));
  g1(20,22)=1-(1-params(5))*params(12);
  g1(21,3)=(-((1-params(7))*(y(21)*y(23)+y(19)*(1-y(23)))));
  g1(21,19)=(-(y(3)*(1-params(7))*(1-y(23))));
  g1(21,21)=(-(y(3)*(1-params(7))*y(23)));
  g1(21,23)=(-(y(3)*(1-params(7))*(y(21)-y(19))));
  g1(22,4)=(-(y(20)*(1-params(7))));
  g1(22,20)=(-(y(4)*(1-params(7))));
  g1(23,16)=(-((-y(17))/(y(16)*y(16))));
  g1(23,17)=(-(1/y(16)));
  g1(23,23)=1;
  g1(24,25)=(-(params(12)/y(26)));
  g1(24,26)=(-((-(params(12)*(1+y(25))))/(y(26)*y(26))));
  g1(25,25)=1;
  g1(25,26)=(-params(13));
  g1(26,9)=(-(y(26)*(y(26)-params(16))*params(12)*params(15)*y(28)/y(28)));
  g1(26,26)=(-((-((y(26)-params(16))*params(15)+y(26)*params(15)))+y(28)*(1+y(9))*((y(26)-params(16))*params(12)*params(15)+y(26)*params(12)*params(15))/y(28)));
  g1(26,27)=(-params(14));
  g1(27,7)=(-params(10));
  g1(27,8)=(-params(11));
  g1(27,24)=(-1);
  g1(27,26)=(-(y(28)*params(15)/2*2*(y(26)-params(16))));
  g1(27,28)=1-T263;
  g1(28,12)=(-params(21));
  g1(28,13)=(-(params(21)*(1+params(8))));
  g1(28,14)=(-params(21));
  g1(28,28)=1;
  g1(29,1)=(-(params(12)*params(7)*(1-params(7))*y(19)*(1-params(4))*(1-params(23))));
  g1(29,2)=(-(params(12)*params(7)*(1-params(7))*params(4)*(1-params(22))*y(20)));
  g1(29,19)=(-(params(12)*params(7)*(1-params(7))*y(1)*(1-params(4))*(1-params(23))));
  g1(29,20)=(-(params(12)*params(7)*(1-params(7))*y(2)*params(4)*(1-params(22))));
  g1(29,27)=(-(params(21)*params(7)));
  g1(29,29)=1;
  g1(30,1)=(-(y(21)*params(12)*(1-params(5))*(1-params(23))*params(7)*(1-params(7))));
  g1(30,21)=(-(y(1)*params(12)*(1-params(5))*(1-params(23))*params(7)*(1-params(7))));
  g1(30,27)=(-(params(21)*params(7)));
  g1(30,30)=1;
  g1(31,1)=(-(params(12)*(1-params(5))*(1-params(7))*params(22)*params(6)*(-(params(7)*y(21)))));
  g1(31,2)=(-(params(12)*(1-params(5))*(1-params(7))*(params(22)*params(6)*params(7)*y(20)+y(20)*params(7)*(1-params(22)))));
  g1(31,20)=(-(params(12)*(1-params(5))*(1-params(7))*(y(2)*params(7)*(1-params(22))+params(22)*params(6)*y(2)*params(7))));
  g1(31,21)=(-(params(12)*(1-params(5))*(1-params(7))*params(22)*params(6)*(-(y(1)*params(7)))));
  g1(31,22)=(-(params(22)*params(6)*params(12)*(1-params(5))*(1-params(7))));
  g1(31,27)=(-(params(21)*params(7)*(1+params(8))));
  g1(31,31)=1;
  g1(32,25)=(-(1/y(26)));
  g1(32,26)=(-((-(1+y(25)))/(y(26)*y(26))));
  g1(32,32)=1;
  g1(33,33)=1;
  g1(34,34)=1;
  g1(35,35)=1-params(20);
  if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
  end
if nargout >= 3,
  %
  % Hessian matrix
  %

  g2 = sparse([],[],[],35,1225);
if nargout >= 4,
  %
  % Third order derivatives
  %

  g3 = sparse([],[],[],35,42875);
end
end
end
end
