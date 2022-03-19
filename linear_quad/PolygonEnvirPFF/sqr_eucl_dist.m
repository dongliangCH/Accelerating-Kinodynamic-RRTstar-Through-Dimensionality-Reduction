function e_dist = sqr_eucl_dist(array,dim)

sqr_e_dist = zeros(size(array,1),dim);

for i=1:dim
    sqr_e_dist(:,i) = array(:,i).*array(:,i);
end

e_dist = sum(sqr_e_dist,2);

end