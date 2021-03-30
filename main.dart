

void main(){
  PowerGrid grid = PowerGrid();
  NuclearPlant nuclear =  NuclearPlant();
  SolarPlant solar = SolarPlant();

  grid.addPlant(nuclear);
  grid.addPlant(solar); // the problem
}

class PowerGrid{
  List <PowerPlant> connectedPlants = [];

  addPlant(PowerPlant plant){
    plant.turnon();
    connectedPlants.add(plant);
  }
}

abstract class PowerPlant {
  turnon();
}

class NuclearPlant implements PowerPlant{
  turnon(){
    print("I/'m a palnt and currently running  ");
  }
}
class SolarPlant implements PowerPlant{
  turnon(){
    print("I/'m a palnt and currently running  ");
  }
}