% x, y の設定
x = -2:0.05:1;
y = -3:0.05:3;

% xとyの長さを取得
numx = length(x);
numy = length(y);

% Zを初期化
Z = zeros(numy, numx);

% x, y のグリッドを作成
[X, Y] = meshgrid(x, y);

% 最初のt=0での v(t) と Zを計算
t = 0;
v = 5 * sin(pi * t);
Z = (X + Y + v) .* exp(-X.^2 - Y.^2);

% 最初のsurfaceを描画
baseSURF = surf(x, y, Z);

% 表示範囲の固定
axis([-2 1 -3 3 -5 5]);

% 描画速度を上げる設定
set(gca, 'SortMethod', 'childorder');

% アニメーションループ
for t = 0.1:0.1:10
    v = 5 * sin(pi * t);
    
    % Zを更新
    Z = (X + Y + v) .* exp(-X.^2 - Y.^2);
    
    % surfaceのZデータを更新
    set(baseSURF, 'ZData', Z);
    
    % 描画更新
    drawnow;
end
