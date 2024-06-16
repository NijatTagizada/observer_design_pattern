import 'package:observer_design_pattern/observer.dart';

void main(List<String> arguments) {
  HomeManager homeManager = HomeManager();

  Lights lights = Lights();
  Kettle kettle = Kettle();

  /// Add our listeners
  homeManager.addListener(lights);
  homeManager.addListener(kettle);

  /// Update data
  homeManager.setData(true);

  /// Notify all observers
  ///
  /// Kettle and Lights will be triggered
  homeManager.notify();

  print('------Remove listener------');

  /// Remove lights observer
  homeManager.removeListener(lights);

  homeManager.setData(false);

  /// Only Kettle will be triggered
  homeManager.notify();
}
