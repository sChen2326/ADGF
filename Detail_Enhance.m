%% parrots
image_path = ".\Img\detail_enhancement\parrots.bmp";
image = imread(image_path);
image = im2double(image);
lambda = 0.5;
eps = 10000;
iter = 1;
sigma = 0.1; 
beta = 0.003;
tic;
image_smooth = ADGF(image, lambda, eps, sigma, beta, iter);
toc;
DE = image + 5 * (image - image_smooth);
figure, imshow([image_smooth,DE]);


%% Flowers
image_path = ".\Img\detail_enhancement\8.png";
image = imread(image_path);
image = im2double(image);
lambda = 0.8;
eps = 10000;
iter = 1;
sigma = 0.1; 
beta = 0.003;
tic;
image_smooth = ADGF(image, lambda, eps, sigma, beta, iter);
toc;
DE = image + 5 * (image - image_smooth);
figure, imshow([image_smooth,DE]);