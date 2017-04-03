clear 
clc

dirClassOne = './Occupied/' ;
dirClassZero = './Empty/';


filesClassOne = dir(strcat([dirClassOne, '*.jpg'])) ;
m1 = size(filesClassOne, 1)

filesClassZero = dir(strcat([dirClassZero, '*.jpg'])) ;
m0 = size(filesClassZero, 1);


X = zeros(m0+m1, 256);

for i=1:m1,

        fprintf('%f\n',  i/m1);

        filename = char(filesClassOne(i).name);
        
        im = imread(strcat([dirClassOne filename]));
        %figure, imshow(im);
        
        im = rgb2gray(im);
        
        X(i,:) = lpq(im);
        
end

for i=1:m0,

        fprintf('%f\n',  i/m0);

        filename = char(filesClassZero(i).name);
        filename
        im = imread(strcat([dirClassZero filename]));
        %figure, imshow(im);
        
        im = rgb2gray(im);
        
        X(i+m1,:) = lpq(im);
        
end

y = zeros(m0+m1, 1);
y(1:m1) = 1;
y(m1:m1+m0) = -1;

features_sparse = sparse(X);

libsvmwrite('parkData.txt', y, features_sparse); 
%save('parkSlotData1.mat', 'X', 'y');
