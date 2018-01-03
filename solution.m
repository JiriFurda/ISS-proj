% Task #1
[Y,Fs] = audioread('xfurda00.wav');	% Load audio input
% Fs = 16000 ... Sampling frequency (samples per second) = 16 000 Hz
% Y[16000] ... Samples quantity = 16 000
% Y / FS = 1 s ... Signal length


% Task #2
X = fft(Y);	% Use Fast Fourier transform on samples
Xhalf = abs(X(1:8001));	% Cut result from Fourier transform in half
f = 0:8000;	% Edit frequency axis
plot(f,Xhalf);  % Show spectral analysis
xlabel('f [Hz]');	% Describe frequency axis


% Task #3
[x, ix] = max(Xhalf);	% Find out maximum value (x) and it's index (iX)
% ix = 699 ... Maximum of spectre is at 699 Hz


% Task #4 & #5
b = [0.2324, -0.4112, 0.2324];
a = [1, 0.2289, 0.4662];
ukazmito(b, a, Fs);
% Signal is stable


% Task #6
Y_filter = filter(b, a, Y);
X_filter = fft(Y_filter);	% Use Fast Fourier transform on samples
Xhalf_filter = abs(X_filter(1:8001));	% Cut result from Fourier transgorm in half
plot(f, Xhalf_filter);	% Show spectral analysis
xlabel('f [Hz]');	% Describe frequency axis


% Task #7
[x_filter, ix_filter] = max(Xhalf_filter); % Find out maximum value (x) and it's index (iX)
% ix = 5959 ... Maximum of spectre is at 5959 Hz


% Sources:
% ISS course page - https://www.fit.vutbr.cz/study/courses/ISS/public/.cs
% Mathlab documentation = https://www.mathworks.com/help/matlab/
% Octave documentation = https://www.gnu.org/software/octave/doc/interpreter/
