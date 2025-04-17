%% Bi
image_path =  ".\Img\texture_removal\Bi.jpg";
image = imread(image_path);
image = im2double(image);
lambda = 0.013;
eps = 0.00001;
iter = 4;
sigma = 3;
beta = 0.003; 
tic;
image_smooth = ADGF(image, lambda, eps, sigma, beta, iter);
toc;
figure, imshow([image,image_smooth]);


%% fish
image_path =  ".\Img\texture_removal\fish.jpg";
image = imread(image_path);
image = im2double(image);
lambda = 0.006;
eps = 0.00001;
iter = 4;
sigma = 3;
beta = 0.003; 
tic;
image_smooth = ADGF(image, lambda, eps, sigma, beta, iter);
toc;
figure, imshow([image,image_smooth]);


%% 12_18
image_path =  ".\Img\texture_removal\12_18.jpg";
image = imread(image_path);
image = im2double(image);
lambda = 0.005;
eps = 0.00001;
iter = 4;
sigma = 3.5;
beta = 0.003; 
tic;
image_smooth = ADGF(image, lambda, eps, sigma, beta, iter);
toc;
figure, imshow([image,image_smooth]);