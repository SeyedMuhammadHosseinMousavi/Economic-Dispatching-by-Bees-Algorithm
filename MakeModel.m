function model=MakeModel()
model.PD=1263;

model.Plants.Pmin=[100 50 80 50 50 50];
model.Plants.Pmax=[500 200 300 150 200 120];
model.Plants.alpha=[240 200 220 200 220 190];
model.Plants.beta=[7 10 8.5 11 10.5 12];
model.Plants.gamma=[0.007 0.0095 0.009 0.009 0.008 0.0075];
model.Plants.P0=[440 170 200 150 190 110];
model.Plants.UR=[80 50 65 50 50 50];
model.Plants.DR=[120 90 100 90 90 90];

model.Plants.PminActual = max(model.Plants.Pmin,model.Plants.P0-model.Plants.DR);
model.Plants.PmaxActual = min(model.Plants.Pmax,model.Plants.P0+model.Plants.UR);

model.Plants.PZ{1}={[210 240],[350 380]};
model.Plants.PZ{2}={[90 110],[140 160]};
model.Plants.PZ{3}={[150 170],[210 240]};
model.Plants.PZ{4}={[80 90],[110 120]};
model.Plants.PZ{5}={[90 110],[140 150]};
model.Plants.PZ{6}={[75 85],[100 105]};

model.nPlant=numel(model.Plants.alpha);

model.B=[ 0.0017  0.0012  0.0007 -0.0001 -0.0005 -0.0002
0.0012  0.0014  0.0009  0.0001 -0.0006 -0.0001
0.0007  0.0009  0.0031  0.0000 -0.0010 -0.0006
-0.0001  0.0001  0.0000  0.0024 -0.0006 -0.0008
-0.0005 -0.0006 -0.0010 -0.0006  0.0129 -0.0002
-0.0002 -0.0001 -0.0006 -0.0008 -0.0002  0.0150]/40;

model.B0=1e-3*[-0.3908 -0.1279 0.7047 0.0591 0.2161 -0.6635];

model.B00=0.056;

end