%ComputeJointDistribution Computes the joint distribution defined by a set
% of given factors
%
%   Joint = ComputeJointDistribution(F) computes the joint distribution
%   defined by a set of given factors
%
%   Joint is a factor that encapsulates the joint distribution given by F
%   F is a vector of factors (struct array) containing the factors 
%     defining the distribution
%
function Joint = ComputeJointDistribution(F)

  % Check for empty factor list
  if (numel(F) == 0)
      warning('Error: empty factor list');
      Joint = struct('var', [], 'card', [], 'val', []);      
      return;
  end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% YOUR CODE HERE:
% Compute the joint distribution defined by F
% You may assume that you are given legal CPDs so no input checking is required.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
Joint = F(1);
for j = 2:length(F),
  Joint = FactorProduct(Joint, F(j));
end;
%   Joint.var = union(F(j).var, Joint.var);

% end;
% for v = 1:length(Joint.var)
%   for j = 1:length(F),
%     indx = find(F(j).var == Joint.var(v));
%     if (~isempty(indx)),
%       Joint.card(v) = F(j).card(indx);
%     end;
%   end;
% end;
% assignments = IndexToAssignment(1:prod(Joint.card), Joint.card)
% Joint.val = ones(1, length(assignments))
% for j = 1:length(F):
%   [dummy, mapF] = ismember(Joint.var, F(j).var);
%   indxF = AssignmentToIndex(assignments(:, mapF), F(J).card);

%   Joint = SetValueOfAssignment(Joint, assignments, GetValueOfAss indxA) .* F(j).val(indxF))
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
end

