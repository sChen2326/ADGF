%% Flowers
image_path =  ".\Img\image_denoising\Flowers.png";
image = imread(image_path);
image = im2double(image);
lambda = 0.15;
eps = 0.00001;
iter = 4;
sigma = 2;
beta = 0.003; 
tic;
image_smooth = ADGF(image, lambda, eps, sigma, beta, iter);
toc;
figure, imshow([image,image_smooth]);


%% Postcards
image_path =  ".\Img\image_denoising\Postcards.png";
image = imread(image_path);
image = im2double(image);
lambda = 0.005;
eps = 0.00001;
iter = 4;
sigma = 0.5;
beta = 0.003; 
tic;
image_smooth = ADGF(image, lambda, eps, sigma, beta, iter);
toc;
figure, imshow([image,image_smooth]);



%% Frog
image_path =  ".\Img\image_denoising\Frog.png";
image = imread(image_path);
image = im2double(image);
lambda = 0.005;
eps = 0.00001;
iter = 4;
sigma = 2;
beta = 0.003; 
tic;
image_smooth = ADGF(image, lambda, eps, sigma, beta, iter);
toc;
figure, imshow([image,image_smooth]);