function [z, out]=Cost(x,model)
P=Parse(x,model);
out=MCalc(P,model);
z=out.z;
end