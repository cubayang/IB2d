%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% FUNCTION: imports all Eulerian Data at a single step
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [x,y,data] = import_Eulerian_Data(path,numSim)

% read in Vorticity %
strChoice = 'Omega'; first = 1;
[Omega,x,y] = read_Eulerian_Data_From_vtk(path,numSim,strChoice,first);
test=1
% read in Momentum %
strChoice = 'P'; first = 0;
[P,~,~] = read_Eulerian_Data_From_vtk(path,numSim,strChoice,first);
test=2
% read in Velocity Magnitude %
strChoice = 'uMag'; first = 0;
[uMag,~,~] = read_Eulerian_Data_From_vtk(path,numSim,strChoice,first);
test=3
% read in x-directed Velocity Magnitude %
strChoice = 'uX'; first = 0;
[uX,~,~] = read_Eulerian_Data_From_vtk(path,numSim,strChoice,first);

% read in y-directed Velocity Magnitude %
strChoice = 'uY'; first = 0;
[uY,~,~] = read_Eulerian_Data_From_vtk(path,numSim,strChoice,first);

% read in Velocity Field %
strChoice = 'u'; 
[U,V] = read_Eulerian_Velocity__Field_vtk(path,numSim);

data = 1;
