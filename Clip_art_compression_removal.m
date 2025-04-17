%% watermelon
image_path =  ".\Img\clip_art_compression_removal\watermelon.jpg";
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




%% dog
image_path =  ".\Img\clip_art_compression_removal\dog.png";
image = imread(image_path);
image = im2double(image);
lambda = 0.02;
eps = 0.00001;
iter = 4;
sigma = 0.5;
beta = 0.003; 
tic;
image_smooth = ADGF(image, lambda, eps, sigma, beta, iter);
toc;
figure, imshow([image,image_smooth]);