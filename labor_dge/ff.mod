var fi fe qi qe thetai thetae vi ve g ho hoe ny noe noi usy usi usoi use Sy Soe Soi D omega c i pi tau y wy woi woe R Ygrowth Cgrowth phi;
varexo phiss;

parameters mi me alpha mu d delta eta gamma sigma kappai kappae beta alphapi epsilon chi pibar by boi boe rho A se si;

mi = 0.35; // scale parameter for I-market matching function
me = 0.35; // scale parameter for E-market matching function
alpha = 0.5;// C-D parameter for matching function
mu = 0.0125; // probability of being old
d = 0.01; // probability of beind dead
se = 0.0075; // separation rate for experienced
delta = 0.8; // probability of being inexperienced
si = 0.015; // separation rate for inexperienced
eta = 0.5; // bargaining power
gamma = 0.6; // skill premium
sigma = 2; // CRRA parameter
kappai = 0.262708644;
kappae = 0.351215661;
beta = 0.99; // discount rate
alphapi = 1.5; // reaction to the inflation by Taylor rule
epsilon = 6; // elasticity of substitution
chi = 77; // adjustment cost parameter
pibar = 1; // gross inflation rate at steady state
by = 0.6; // unemployment insurance for young
boi = 0.96; // unemployment insurance for old inexperienced
boe = 0.96; // unemployment insurance for old experienced
rho = 0.9; 
A = 1; // scale parameter of production function

model;

//(1)
fi = mi*thetai^(1-alpha);

//(2)
fe = me*thetae^(1-alpha);

//(3)
qi = fi/thetai;

//(4)
qe = fe/thetae;

//(5)
thetai = vi/usi;

//(6)
thetae = ve/use;

//(7)
(1+g)*hoe = (1-d)*(hoe(-1)-se*delta*noe(-1))+mu*(1-ho(-1));

//(8)
(1+g)*ho = (1-d)*ho(-1)+mu*(1-ho(-1));

//(9)
g = phi*(1-ho)-d*ho;

//(10)
(1+g)*ny = (1-mu)*(si*fi+1-si)*ny(-1)+fi*(1-mu)*(1-ho(-1)-ny(-1));

//(11)
(1+g)*noe = (1-d)*(1-si+(1-delta)*se*fe)*noe(-1)+(1-si+se*fe)*mu*ny(-1)+mu*fe*(1-ho(-1)-ny(-1))+(1-d)*fe*(hoe(-1)-noe(-1));

//(12)
(1+g)*noi = (1-d)*(1-si+si*fi)*noi(-1)+(1-d)*se*delta*fi*noe(-1)+fi*(1-d)*(ho(-1)-hoe(-1)-noi(-1));

//(13)
(1+g)*usy = (1-mu)*(si*ny(-1)+1-ho(-1)-ny(-1));

//(14)
(1+g)*usoi = (1-d)*(delta*se*noe(-1)+si*noi(-1)+ho(-1)-hoe(-1)-noi(-1));

//(15)
usi = usy + usoi;

//(16)
(1+g)*use = mu*(se*ny+1-ho(-1)-ny(-1))+(1-d)*((1-delta)*se*noe(-1)+hoe(-1)-noe(-1));

//(17)
Sy = A*tau-by+beta*((c/c(+1))^sigma)*((1-mu)*(1-si)*(1-fi(+1)*eta)*Sy(+1)+mu*(1-se)*(1-fe(+1)*eta)*Soe(+1));

//(18)
Soe = (1+gamma)*A*tau-boe+(1-d)*beta*((c/c(+1))^sigma)*((1-se)*(1-fe(+1)*eta)*Soe(+1)-delta*se*(fe(+1)*eta*Soe(+1)-fi(+1)*eta*Soi(+1)+D(+1)));

//(19)
Soi = A*tau-boi+(1-si)*(1-d)*beta*((c/c(+1))^sigma)*(1-fi(+1)*eta)*Soi(+1);

//(20)
D = boe-boi+(1-d)*beta*((c/c(+1))^sigma)*(eta*(fe(+1)*Soe(+1)-fi(+1)*Soi(+1))+D(+1));

//(21)
kappai = (1-eta)*qi*(omega*Soi+(1-omega)*Sy);

//(22)
kappae = (1-eta)*qe*Soe;

//(23)
omega = usoi/usi;

//(24)
(c/c(+1))^(-sigma) = beta*(1+i)/(pi(+1));

//(25)
i = (pibar)/beta-1+alphapi*(pi-pibar);

//(26)
0 = 1-epsilon-chi*(pi-pibar)*pi+epsilon*tau+beta*(c/c(+1))^sigma*chi*(pi(+1)-pibar)*pi(+1)*(1+g(+1))*y(+1)/y;

//indexation
//0 = 1-epsilon-chi*(pi/pi(-1)-pibar)*pi/pi(-1)+epsilon*tau+beta*(c/c(+1))^sigma*chi*(pi(+1)-pibar)*pi(+1)*(1+g(+1))*y(+1)/y;

//(27)
y = c + kappai*vi+kappae*ve+chi/2*(pi-pibar)^2*y;

//(28)
y = A*(ny+noi+(1+gamma)*noe);

//(29)
wy = eta*A*tau+(1-eta)*by+eta*(1-eta)*beta*(c/c(+1))^sigma*((1-mu)*(1-si)*fi(+1)*Sy(+1)+mu*(1-se)*fe(+1)*Soe(+1));

//(30)
woi = eta*A*tau+(1-eta)*boi+eta*(1-eta)*(1-si)*(1-d)*beta*(c/c(+1))^sigma*fi(+1)*Soi(+1);

//(31)
woe = (1+gamma)*eta*A*tau+(1-eta)*boe+(1-d)*(1-eta)*beta*(c/c(+1))^sigma*(eta*(1-se)*fe(+1)*Soe(+1)+delta*se*(fe(+1)*eta*Soe(+1)-fi(+1)*eta*Soi(+1)+D(+1)));

//(32)
R = (1+i)/pi(+1);//gross

//(33)
Ygrowth = y/y(-1);//gross

//(34)
Cgrowth = c/c(-1);//gross

//(35)-(37)
phi = (1-rho)*phiss+rho*phi(-1);
//se = (1-rho)*sess+rho*se(-1) + e_s;
//si = (1-rho)*siss+rho*si(-1) + e_s;

end;

initval;
    fi = 0.30000000;
    fe = 0.30000000;
    qi = 0.30000000;
    qe = 0.30000000;
thetai = 1.00000000;
thetae = 1.00000000;
    vi = 0.04703100;
    ve = 0.00344091;
     g = 0.00000000;
    ho = 0.57446809;
   hoe = 0.32163824;
    ny = 0.39808434;
   noe = 0.31922960;
   noi = 0.24161104;
   usy = 0.03100414;
   usi = 0.04703100;
  usoi = 0.01602687;
   use = 0.00344091;
    Sy = 1.49901356;
   Soe = 1.51749447;
   Soi = 0.09510449;
     D = 10.50817402;
 omega = 0.34077237;
     c = 1.07863362;
     i = 0.01010101;
    pi = 1.00000000;
   tau = 0.83333333;
     y = 1.08661683;
    wy = 0.82205415;
   woi = 0.83192098;
   woe = 1.14413112;
     R = 0.01010101;
Ygrowth = 0;
Cgrowth = 0;
  phiss = 0.02;
    phi = phiss;
end;
check;
steady;//(solve_algo=2)

endval;
    phiss = 0.011;
end;
check;
steady;//(solve_algo=2)

shocks;
var phiss;
periods 1:20;
values 0.02;
end;
simul(periods=220);
plot((pi-1)*100);

//shocks;
//var e_phi; stderr 0.0005;
//var e_s; stderr 0.0005;
//end;

