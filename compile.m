% Compile MEX files for hello_mip_mex
fprintf('Compiling hello_mip_mex MEX files...\n');

src_dir = fileparts(mfilename('fullpath'));
original_dir = pwd;
cd(src_dir);

try
    mex('mex_dot.c');
    fprintf('MEX compilation completed successfully.\n');
catch ME
    cd(original_dir);
    rethrow(ME);
end

cd(original_dir);
