% Stellar Motion %

% Load data and define measurement parameters %
load starData
nObs = size(spectra,1);
lambdaStart = 630.02;
lambdaDelta = 0.14;

% Create vector of wavelengths %
lambdaEnd = lambdaStart + (nObs-1)*lambdaDelta;
lambda = (lambdaStart:lambdaDelta:lambdaEnd)';

% Extract spectrum of HD10032 %
% Extract the appropriate column of spectra %
s = spectra(:,2);

% Plot the spectrum %
loglog(lambda,s,'.-')
xlabel('Wavelength')
ylabel('Intensity')

% Find the wavelength of the Hydrogen-alpha line %
% Find the minimum spectral value and corresponding wavelength %
[sHa,idx] = min(s);
lambdaHa = lambda(idx);

% Add Hydrogen-alpha to spectrum plot %
hold on
loglog(lambdaHa,sHa,'rs','MarkerSize',8)
hold off

% Determine the redshift & stellar motion %
z = lambdaHa/656.28 - 1;
speed = z*299792.458



