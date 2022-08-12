function P=Parse(x,model)
PminActual=model.Plants.PminActual;
PmaxActual=model.Plants.PmaxActual;
P=PminActual+(PmaxActual-PminActual).*x;
PZ=model.Plants.PZ;
nPlant=model.nPlant;
for i=1:nPlant
for j=1:numel(PZ{i})
if P(i)>PZ{i}{j}(1) && P(i)<PZ{i}{j}(2)
% Correction
if P(i)<(PZ{i}{j}(1)+PZ{i}{j}(2))/2
P(i)=PZ{i}{j}(1);
else
P(i)=PZ{i}{j}(2);
end
end
end
end
end