% This file trains NN to work like AND gate
% 
% Created By: JCBRO Labs
% Date: 19/07/2018
% website: www.jcbrolabs.org
% mail: jcbrolabs@gmail.com
close all; clear all;

x = [0 0 1 1; 0 1 0 1]; % input to the NN
y = [0 0 0 1];  % Target Output of the NN

% 
net = newp([0 1; 0 1],1);
net.trainParam.epochs = 20;
net = train(net,x,y);

% simulating trained NN
simulation = sim(net,x);
plotpv(x,y);    % plot input/target output
plotpc(net.iw{1,1},net.b{1})
