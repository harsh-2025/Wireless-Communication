{\rtf1\ansi\ansicpg1252\cocoartf2759
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;\red148\green0\blue242;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;\cssrgb\c65490\c3529\c96078;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs20 \cf0 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 clc\
clear \cf3 \strokec3 all\cf0 \strokec2 \
close \cf3 \strokec3 all\cf0 \strokec2 \
\
mu = 0;\
x = rand(1, 5000) - 0.5;\
x = sort(x);\
sigma = 2;\
\
eqn = (1/(sqrt(2*pi*sigma^2))) * exp(-(mu - x).^2/(2*sigma^2));\
hold \cf3 \strokec3 on\cf0 \strokec2 ;\
plot(x, eqn, \cf3 \strokec3 'LineWidth'\cf0 \strokec2 , 1.5, \cf3 \strokec3 'DisplayName'\cf0 \strokec2 , \cf3 \strokec3 'Gaussian (\\mu=0, \\sigma=2)'\cf0 \strokec2 );\
\
sigma2 = 1;\
mu2 = 0;\
eqn2 = (1/(sqrt(2*pi*sigma2^2))) * exp(-(mu2 - x).^2/(2*sigma2^2));\
hold \cf3 \strokec3 on\cf0 \strokec2 ;\
plot(x, eqn2, \cf3 \strokec3 'LineWidth'\cf0 \strokec2 , 1.5, \cf3 \strokec3 'DisplayName'\cf0 \strokec2 , \cf3 \strokec3 'Gaussian (\\mu=0, \\sigma=1)'\cf0 \strokec2 );\
\
sigma3 = 0.5;\
mu3 = 0;\
eqn3 = (1/(sqrt(2*pi*sigma3^2))) * exp(-(mu3 - x).^2/(2*sigma3^2));\
plot(x, eqn3, \cf3 \strokec3 'LineWidth'\cf0 \strokec2 , 1.5, \cf3 \strokec3 'DisplayName'\cf0 \strokec2 , \cf3 \strokec3 'Gaussian (\\mu=0, \\sigma=0.5)'\cf0 \strokec2 );\
\
sigma4 = 1;\
mu4 = -0.5;\
eqn4 = (1/(sqrt(2*pi*sigma4^2))) * exp(-(mu4 - x).^2/(2*sigma4^2));\
yy = normpdf(x, eqn4);\
\
plot(x, eqn4, \cf3 \strokec3 'LineWidth'\cf0 \strokec2 , 1.5, \cf3 \strokec3 'DisplayName'\cf0 \strokec2 , \cf3 \strokec3 'Gaussian (\\mu=-0.5, \\sigma=1)'\cf0 \strokec2 );\
\
xlabel(\cf3 \strokec3 'X-axis'\cf0 \strokec2 );\
ylabel(\cf3 \strokec3 'Probability Density Function'\cf0 \strokec2 );\
title(\cf3 \strokec3 'Gaussian Distributions'\cf0 \strokec2 );\
legend(\cf3 \strokec3 'show'\cf0 \strokec2 );\
grid \cf3 \strokec3 on\cf0 \strokec2 ;\
\
}