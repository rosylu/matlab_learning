function [img] = chiehjul_hw7_p6(f, p)
    % Returns the rank-p approximate image img
    % using the code that you had written in the prior problem
    
    %aa = imread(f)
    %imshow(aa);
    
    % Transfer to double
    ori_img = double(imread(f));
    
    % Check if img is 3D
    if ndims(ori_img) == 3
        approx_img(:, :, 1) = chiehjul_hw7_p5(ori_img(:, :, 1),p);
        approx_img(:, :, 2) = chiehjul_hw7_p5(ori_img(:, :, 2),p);
        approx_img(:, :, 3) = chiehjul_hw7_p5(ori_img(:, :, 3),p);
    elseif ndims(ori_img) == 2
        approx_img = chiehjul_hw7_p5(ori_img,p);
    end
    
    % Transfer to int array
    img = uint8(approx_img);
    %imshow(img);
end

