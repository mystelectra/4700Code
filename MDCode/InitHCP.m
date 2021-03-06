doPlot = 1;
dt = 15e-15;
TStop = 2000 * dt;
InitDist = 0.0;
Method = 'VE'; % VE -- verlot; FD -- Forward Difference

Mass0 = 11 * C.am; % Unknown
Mass1 = 5 * C.am; % Argon

AtomSpacing = 0.5430710e-9;
LJSigma = AtomSpacing / 2^(1 / 6);
LJEpsilon = 1e-21;

PhiCutoff = 3 * AtomSpacing * 1.1;

T = 30;

AddHCPAtomicArray(11, 7, 0,0, 0.1,0, 0, 0, T, 1);
AddHCPAtomicArray(3, 2, 0.000000005, -0.000000005, -1.2, 0.4, -0.5, 2, T+750, 1);

Ep = 2;
%AddParticleStream(1, -3, -10, -3*pi / 2, 0, Ep * C.q_0, 5);

Size = 20*AtomSpacing;
Limits = [-Size +Size -Size +Size]; % square is good
PlDelt = 5*dt;

PlotFile = 'Block.gif';
doPlotImage = 1;
PlotSize = [100, 100, 1049, 1049];

ScaleV = .2e-11;
ScaleF = 20;
