function out=MCalc(P,model)
alpha=model.Plants.alpha;
beta=model.Plants.beta;
gamma=model.Plants.gamma;
C=alpha+beta.*P+gamma.*P.*P;
% The Cost
CTotal=sum(C);
B=model.B;
B0=model.B0;
B00=model.B00;
% Power Loss
PL=P*B*P'+B0*P'+B00;
% All Powers
PTotal=sum(P);
% Power Demand
PD=model.PD;
PowerBalanceViolation=max(1-(PTotal-PL)/PD,0);

%% Violation
q=5; %Violation (more the better) 
%
z=CTotal*(1+q*PowerBalanceViolation);
out.P=P;
out.PTotal=PTotal;
out.C=C;
out.CTotoal=CTotal;
out.PL=PL;
out.PowerBalanceViolation=PowerBalanceViolation;
out.z=z;
end