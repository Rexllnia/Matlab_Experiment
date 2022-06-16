function [output]=makespace(str)
output='';
for i=1:length(str)
    output(2*i-1)=str(i);
end
output=['[',output,' ]'];

end