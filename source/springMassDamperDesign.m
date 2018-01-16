function design = springMassDamperDesign(mass)

if nargin
  m = mass;
  randomVar = rand;
else
  m = 1500; % Need to know the mass to determine critical damping
  randomVar = rand;
end

design.k = 5e6;                  % Spring Constant
design.c = 2*m*sqrt(design.k/m); % Damping Coefficient to be critically damped
