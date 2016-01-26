clc
clear all
close all

%red neuronal parametros de musica


[x, Fs, nbits, readinfo] = wavread('piano.wav');
x=x(:,1);

%sound(x, Fs);
% x2=fft(x);
% x3=fft(x2);
% x4=fft(x3);
% x5=fft(x4);
 
tamano=size(x);
tamano=tamano(1);
minimo=tamano*0.8;
maximo=tamano*2;
 y=[1]
 for i = minimo:1e100
     w1=rand(i,tamano);
     
       w2=y*pinv(tanh(w1*x))
       if i>maximo
           i=minimo;
       end
 end
w2
