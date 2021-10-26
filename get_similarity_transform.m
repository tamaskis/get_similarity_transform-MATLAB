%==========================================================================
%
% get_similarity_transform  Obtains the matrix P defining the similarity 
% transformation B = P^(-1)AP.
%
%   P = get_similarity_transform(A,B)
%
% See also TODO.
%
% Copyright © 2021 Tamas Kis
% Last Update: 2021-10-26
% Website: https://tamaskis.github.io
% Contact: tamas.a.kis@outlook.com
%
% TECHNICAL DOCUMENTATION:
% TODO
%
% REFERENCES:
%   [1] TODO
%
%--------------------------------------------------------------------------
%
% ------
% INPUT:
% ------
%   A       - (n×n double) matrix 1
%   B       - (n×n double) matrix 2
%
% -------
% OUTPUT:
% -------
%   P       - (n×n double) matrix defining the similarity transformation 
%                          from A to B
%
%==========================================================================
function P = get_similarity_transform(A,B)

    % eigendecomposition of the two matrices
    [VA,~] = eig(A);
    [VB,~] = eig(B);
    
    % similarity transformation
    P = VA/VB;
    
end