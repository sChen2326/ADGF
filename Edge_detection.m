%% 12_39
image_path =  ".\Img\edge_detection\12_39.jpg";
image = imread(image_path);
image = im2double(image);
lambda = 0.02;
eps = 0.00001;
iter = 4;
sigma = 4;
beta = 0.003; 
tic;
image_smooth = ADGF(image, lambda, eps, sigma, beta, iter);
toc;
gray = rgb2gray(image_smooth);
edges = edge(gray, 'canny');
figure, imshow(edges);
figure, imshow([image,image_smooth]);


%% 07_05
image_path =  ".\Img\edge_detection\07_05.jpg";
image = imread(image_path);
image = im2double(image);
lambda = 0.2;
eps = 0.00001;
iter = 4;
sigma = 4;
beta = 0.003; 
tic;
image_smooth = ADGF(image, lambda, eps, sigma, beta, iter);
toc;
gray = rgb2gray(image_smooth);
edges = edge(gray, 'canny');
figure, imshow(edges);
figure, imshow([image,image_smooth]);