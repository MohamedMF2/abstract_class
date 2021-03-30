

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
    bool confirmation = plant.turnon('5 hours');
    connectedPlants.add(plant);
  }
}

abstract class PowerPlant {
 bool turnon(String workingHours);
}

class NuclearPlant implements PowerPlant{
  bool turnon(String workingHours){
    print("I/'m a palnt and currently running for${workingHours}  ");
    return true;

  }
}
class SolarPlant implements PowerPlant{
  bool turnon(String workingHours){
    print("I/'m a palnt and currently running for${workingHours} ");
    return true;
  }
}