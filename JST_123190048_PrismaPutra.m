clear
clc

%JST untuk kasus mengenali pola fungsi "or"
%2 variabel
%bobot awal [-1 1]
%bias [1]
p1 = [1;1];
p2 = [1;0];
p3 = [0;1];
p4 = [0;0];
p = [p1 p2 p3 p4];
disp("Inputan yang Digunakan: ")
p


t1 = 1;
t2 = 1;
t3 = 1;
t4 = 0;
t = [t1 t2 t3 t4];
disp("Target: ")  
t

net = newp([0 1;0 1],1);

bobot = [-1 1]
net.IW{1,1} = bobot;

bias = [1]
net.b{1} = bias;

% % Karena Berdasarkan tugas dikatakan bahwa output dibuat untuk pemula,
% maka hasil output langsung ditampilkan agar tidak perlu mencari variabel satu-persatu

disp("Dilakukan pelatihan satu per satu input variabel dengan fungsi learnp")
disp("Untuk Inputan 1 dengan X1=1 dan X2=1:")
output1 = sim(net,p1)
error1 = t1 - output1
% Nilai dW didapat dari e*p
dW = learnp(bobot,p1,[],[],[],[],error1,[],[],[],[],[])
bobot = bobot + dW

disp("Untuk Inputan 2 dengan X1=1 dan X2=0:")
output2 = sim(net,p2)
error2 = t2 - output2
dW = learnp(bobot,p2,[],[],[],[],error2,[],[],[],[],[])
bobot = bobot + dW

disp("Untuk Inputan 3 dengan X1=0 dan X2=1:")
output3 = sim(net,p3)
error3 = t3 - output3
dW = learnp(bobot,p3,[],[],[],[],error3,[],[],[],[],[])
bobot = bobot + dW

disp("Untuk Inputan 4 dengan X1=0 dan X2=0:")
output4 = sim(net,p4)
error4 = t4 - output4
dW = learnp(bobot,p4,[],[],[],[],error4,[],[],[],[],[])
bobot = bobot + dW

disp("Untuk Semua inputan:")
output = sim(net,p)
target = t
error = t-output
perfomance = perform(net,t,output,{1})

disp("Akan ditampilkan window baru di mana user bisa melihat proses training dalam bentuk GUI")
disp("Anda dapat menekan tombol perfomance untuk melihat grafik error dan perubahan bobot(epoch)")
disp(" ")

net = train(net,p,t);
disp("Bobot Optimal untuk X1 dan X2:")
disp(net.IW{1,1})
disp("Bias Optimal:")
disp(net.b{1})