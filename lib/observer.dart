abstract class Observer {
  void update(bool atHome);
}

class Kettle implements Observer {
  @override
  void update(bool atHome) {
    /// You can write your custom logic here
    if (atHome) {
      print('Water is boiling');
    } else {
      print('The kettle is turning off');
    }
  }
}

class Lights implements Observer {
  @override
  void update(bool atHome) {
    /// You can write your custom logic here
    if (atHome) {
      print('Turning on lights');
    } else {
      print('Turning off all lights');
    }
  }
}

class HomeManager {
  final List<Observer> _observersList = [];

  /// Changeable data (state data)
  bool _atHome = false;

  void addListener(Observer observer) {
    _observersList.add(observer);
  }

  void removeListener(Observer observer) {
    _observersList.remove(observer);
  }

  /// Update data
  void setData(bool atHome) {
    _atHome = atHome;
  }

  /// Notify all added observers
  void notify() {
    for (var element in _observersList) {
      element.update(_atHome);
    }
  }
}
