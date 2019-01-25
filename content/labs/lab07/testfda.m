%% Filter Design
function Hd = testfda
%TESTFDA Returns a discrete-time filter object.

% MATLAB Code
% Generated by MATLAB(R) 8.2 and the DSP System Toolbox 8.5.
% Generated on: 24-Mar-2014 16:25:46

% Butterworth Lowpass filter designed using FDESIGN.LOWPASS.

% All frequency values are in Hz.
Fs = fill-this-in;  % Sampling Frequency

Fpass = fill-this-in;       % Passband Frequency
Fstop = fill-this-in;      % Stopband Frequency
Apass = fill-this-in;           % Passband Ripple (dB)
Astop = fill-this-in;          % Stopband Attenuation (dB)
match = fill-this-in;  % Band to match exactly

% Construct an FDESIGN object and call its BUTTER method.
h  = fdesign.lowpass(Fpass, Fstop, Apass, Astop, Fs);
Hd = design(h, 'butter', 'MatchExactly', match);

%% Parameters needed to test filter: fs, ws and Ts
Ts = 1/Fs;   
% sampling frequency in rad/s
ws = 2*pi*Fs; 
%% Signal
% generate the signals which will be filtered

%% Basic parameters
% Change this code to generate a sinewane in pass-band, cutof frequency
% and stop band -- initial setting has f0 = Fpass.
f0 = Fpass;
t0 = 1/f0; % Hz
t = [0:200].*Ts; 
x = cos(2*pi*f0*t);
x(end) = []; % removes last element
% filter signal
x_filtered = filter(Hd,x);
%plot the filtered signal
%%
plot(x_filtered,'r')
title('Filtered Signal')
xlabel('Samples');
ylabel('Amplitude')
%% Repeat for a frequency well inside the pass-band and one in the stop band
