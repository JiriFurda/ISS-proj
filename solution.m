% Task #1
[Y,Fs] = audioread('xfurda00.wav');	% Load audio input
% Fs = 16000 ... Sampling frequency (samples per second) = 16 000 Hz
% Y[16000] ... Samples quantity = 16 000
% Y / FS = 1 s ... Signal length


% Task #2
X = fft(Y)	% Use Fast Fourier transform on samples
Xhalf = abs(X(1:8001))	% Cut result from Fourier transgorm in half
plot(Xhalf)	% Show spectral analysis


% Task #3
[x, ix] = max(Xhalf)	% Find out maximum value (x) and it's index (iX)
% ix = 699 ... Maximum of spectre is at 698 Hz (Indexing starts at 1 but frequency starts with 0)








% Sources:
% ISS course page - https://www.fit.vutbr.cz/study/courses/ISS/public/.cs
% Mathlab documentation = https://www.mathworks.com/help/matlab/
% Octave documentation = https://www.gnu.org/software/octave/doc/interpreter/