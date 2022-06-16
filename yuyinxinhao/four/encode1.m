%±àÂëº¯Êý
function [a,e]=encode1(x,N)
narginchk(1,2)
if isempty(x)
    error(message('signal:lpc:Empty'));
end
[m,n] = size(x);
if (n>1) && (m==1)
	x = x(:);
	[m,n] = size(x);
end

if nargin < 2,
    N = m-1; 
elseif N < 0,

    error(message('signal:lpc:negativeOrder'));
end


try
    chkinputdatatype(x,N);
catch ME
    throwAsCaller(ME);
end

if (N > m),
    error(message('signal:lpc:orderTooLarge', 'X must be a vector with length greater or equal to the prediction order.', 'If X is a matrix, the length of each column must be greater or equal to', 'the prediction order.'));
end


X = fft(x,2^nextpow2(2*size(x,1)-1));
R = ifft(abs(X).^2);
R = R./m; 

[a,e] = levinson(R,N);

for k = 1:n,
    if isreal(x(:,k))
        a(k,:) = real(a(k,:));
    end
end