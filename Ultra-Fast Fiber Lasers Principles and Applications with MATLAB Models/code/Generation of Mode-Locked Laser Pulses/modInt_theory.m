function Eout = modInt_theory(Ein,m,fm)
% modInt_theory(Ein,m,fm)
% intensity modulator model
% written by Lam Quoc Huy

% modulator parameters
%	chirp alpha factor: alpha
%	extinction ratio: esilon (dB)
% modulation parameters
%	modulation index: m
%	modulation frequency: fm
global Ts;
N = size(Ein,1);
k = (1:N)'; % no something like fftshift, which means that it is in the time domain.
% k-N/2
% -511
% -510
% ...
% 512
Eout = Ein.*exp(-m/4*(2*pi*fm*Ts)^2*(k-N/2).*(k-N/2));  % Eq. (2.12)
                                                        % k-N/2 is to move the shape to the center, otherwise only half the pulse will appear.
                                                        % (k-N/2)*Ts is t
end
