import 'dart:io';
import 'dart:convert';
import 'dart:async';

void main(){
  PowerGrid grid = PowerGrid();
  NuclearPlant nuclear =  NuclearPlant();
  SolarPlant solar = SolarPlant();

  grid.addPlant(nuclear);
  grid.addPlant(solar); // the problem
}

class PowerGrid{
  List <NuclearPlant> connectedPlants = [];

  addPlant(NuclearPlant plant){
    plant.turnon();
    connectedPlants.add(plant);
  }
}
class NuclearPlant{
  turnon(){
    print("I/'m a palnt and currently running  ");
  }
}
class SolarPlant{
  turnon(){
    print("I/'m a palnt and currently running  ");
  }
}