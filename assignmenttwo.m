clc
clear all
a=imread('C:\Users\PRIYANSHU SHARMA\Desktop\PRIYANSHU\6 STUDY\5 SEMSTER\CBIR\MATLAB\LAB 6\1.jpg');
figure, imshow(a)
title('Orignal Image');

b= imnoise(a,'salt & pepper',0.02);
figure, imshow(b)
title('Salt & Paper noise');

c=imnoise(a,'poisson');
figure, imshow(c)
title('Poisson noise');

d = imnoise(a,'speckle',0.04);
figure, imshow(d)
title('Speckle noise');

e = imnoise(a,'gaussian',0,0.01);
figure, imshow(e)
title('Gaussian noise');

f = imnoise(a,'localvar',0.05*rand(size(a)));
figure, imshow(f)
title('Rayleigh noise');

g = imnoise(a,'localvar',rand(1,100),rand(1,100));
figure, imshow(g)
title('Gamma noise');

h=medfilt2(f);
figure, imshow(h)
title('Restored Image');