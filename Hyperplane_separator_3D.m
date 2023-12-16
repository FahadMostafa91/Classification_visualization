% MATLAB Code for Generating Synthetic Data with Multiple Features in 3D

% Set random seed for reproducibility
rng(42);

% Number of data points
numPoints = 100;

% Generating synthetic data with three features
feature1 = randn(numPoints, 1);  % Example feature 1
feature2 = 2 * feature1 + 0.5 * randn(numPoints, 1);  % Example feature 2
feature3 = 0.5 * feature1 + 0.8 * feature2 + 0.2 * randn(numPoints, 1);  % Example feature 3

% Create labels (just for visualization purposes)
labels = randi([0, 1], numPoints, 1);

% Visualize the synthetic data in 3D
figure;

% Scatter plot with color-coded labels
scatter3(feature1(labels == 0), feature2(labels == 0), feature3(labels == 0), 'filled', 'MarkerFaceColor', 'b');
hold on;
scatter3(feature1(labels == 1), feature2(labels == 1), feature3(labels == 1), 'filled', 'MarkerFaceColor', 'r');
hold off;

%xlabel('Feature 1','FontWeight', 'bold', 'FontSize', 24);
%ylabel('Feature 2','FontWeight', 'bold', 'FontSize', 24);
%zlabel('Feature 3','FontWeight', 'bold', 'FontSize', 24);
title('Feature Extraction','FontWeight', 'bold', 'FontSize', 24);

% Legend
legend('Class 0', 'Class 1','FontWeight', 'bold', 'FontSize', 24);


% MATLAB Code for Generating Synthetic Data with Multiple Features and Drawing a Plane

% Set random seed for reproducibility
rng(42);

% Number of data points
numPoints = 100;

% Generating synthetic data with three features
feature1 = randn(numPoints, 1);  % Example feature 1
feature2 = 2 * feature1 + 0.5 * randn(numPoints, 1);  % Example feature 2
feature3 = 0.5 * feature1 + 0.8 * feature2 + 0.2 * randn(numPoints, 1);  % Example feature 3

% Create labels (just for visualization purposes)
labels = randi([0, 1], numPoints, 1);

% Visualize the synthetic data in 3D
figure;

% Scatter plot with color-coded labels
scatter3(feature1(labels == 0), feature2(labels == 0), feature3(labels == 0), 'filled', 'MarkerFaceColor', 'b');
hold on;
scatter3(feature1(labels == 1), feature2(labels == 1), feature3(labels == 1), 'filled', 'MarkerFaceColor', 'r');

% Draw a separating plane
[x, y] = meshgrid(linspace(min(feature1), max(feature1), 50), linspace(min(feature2), max(feature2), 50));
z = 0.5 * x + 0.8 * y;  % Example separating plane equation (you can modify this)

mesh(x, y, z, 'EdgeColor', 'k', 'FaceAlpha', 0.5);

hold off;

%xlabel('Feature 1','FontWeight', 'bold', 'FontSize', 24);
%ylabel('Feature 2','FontWeight', 'bold', 'FontSize', 24);
%zlabel('Feature 3','FontWeight', 'bold', 'FontSize', 24);
title('Classification','FontWeight', 'bold', 'FontSize', 24);

% Legend
%legend('Class 0', 'Class 1', 'Separating Plane','FontWeight', 'bold', 'FontSize', 12);
