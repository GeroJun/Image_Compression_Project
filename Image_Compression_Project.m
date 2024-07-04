clear all
close all
clc

%%% Read the image file %%%
IM = imread('image.png');

%%% Save the values of the three color levels in matrices R, G, and B
IM_red = IM(:,:,1);
IM_green = IM(:,:,2);
IM_blue = IM(:,:,3);

R = double(IM_red);
G = double(IM_green);
B = double(IM_blue);

%Part 1
image_rank = rank(R)

%Part 2
[Ur,Sr,Vr] = svd(R);
[Ug,Sg,Vg] = svd(G);
[Ub,Sb,Vb] = svd(B);

%Part 3
figure(1), subplot(3,1,1), plot(diag(Sr),'ro')
figure(1), subplot(3,1,2), plot(diag(Sg),'go')
figure(1), subplot(3,1,3), plot(diag(Sb),'bo')
%Description: The graphs are all exponential decay and very similar to one
%another.

%Part 4
k = 70
Rk = Ur(:,1:k)*Sr(1:k,1:k)*Vr(:,1:k)';
Gk = Ug(:,1:k)*Sg(1:k,1:k)*Vg(:,1:k)';
Bk = Ub(:,1:k)*Sb(1:k,1:k)*Vb(:,1:k)';

%Part 5
C = zeros(size(IM));
C(:,:,1) = Rk;
C(:,:,2) = Gk;
C(:,:,3) = Bk;
figure(2), imshow(IM), title('Original image')
figure(3), imshow(uint8(C)), title('Compressed image')
%The closer the number of k is to the imagerank, the more similar the image
%gets. The lower it is, the more blurr and less detail there is in the
%image. For example, if the k equals 2, the image will be formed by squres
%of colors rather than having any detail.

%Part 6
m = size(IM,1);
n = size(IM,2);

cp = (3 * k * (1 + m + n))/(3 * m * n)

%Part 7
Rp = sum(diag(Sr(1:k,1:k)).^2) / sum(diag(Sr).^2) * 100
Gp = sum(diag(Sg(1:k,1:k)).^2) / sum(diag(Sg).^2) * 100
Bp = sum(diag(Sb(1:k,1:k)).^2) / sum(diag(Sb).^2) * 100

average = (Rp + Gp + Bp) / 3

%Part 8
%Experiment with different numbers of retained singular values during
%compression. Ideally, from small to big as that way we can continue
%checking the quality while aiming for the lowest value possible. A good
%way to check if the image quality is good enough if its possible to
%recognize the shape as well as very little unimportant differences. In
%this image project specifically, the image maintains its shape and quality
%when the average is maintained in the 99.8%. Hence, the lowest k can go is 65 approximately. 
