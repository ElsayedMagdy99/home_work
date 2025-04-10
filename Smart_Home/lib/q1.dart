void main() {
  Light light = Light('Bedroom light');
  AirConditioner ac = AirConditioner('Bedroom Ac');
  SecurityCamera camera = SecurityCamera('Front Door Camera');
  SmartHomeController controller = SmartHomeController();
  controller.addDevice(light);
  controller.addDevice(ac);
  controller.addDevice(camera);
  controller.turnAllOn();
  ac.setTemperature(20);
  camera.enableMotionDetection();
  controller.showAllDevices();
}

abstract class SmartDevice {
  String name;
  bool isOn = true;
  SmartDevice(this.name);
  void turnOn() {
    isOn = true;
    print('$name is on');
  }

  void turnOff() {
    isOn = false;
    print('$name is off');
  }

  String deviceInfo();
}

class Light extends SmartDevice {
  Light(String name) : super(name);
  @override
  String deviceInfo() => 'Light - $name';
}

class AirConditioner extends SmartDevice {
  int temperature = 20;
  AirConditioner(String name) : super(name);

  void setTemperature(int temp) {
    temperature = temp;
    print('$name temperature set to $temp°C');
  }

  String deviceInfo() => 'AC - $name, Temp: $temperature°C';
}

class SecurityCamera extends SmartDevice {
  bool motionDetection = false;
  SecurityCamera(String name) : super(name);

  void enableMotionDetection() {
    motionDetection = true;
    print('$name motion detection enabled');
  }

  void disableMotionDetection() {
    motionDetection = false;
    print('$name motion detection disabled');
  }

  @override
  String deviceInfo() => 'Camera - $name, Motion Detection: $motionDetection';
}

class SmartHomeController {
  List<SmartDevice> devices = [];

  void addDevice(SmartDevice device) {
    devices.add(device);
  }

  void turnAllOn() {
    for (var device in devices) {
      device.turnOn();
    }
  }

  void turnAllOff() {
    for (var device in devices) {
      device.turnOff();
    }
  }

  void showAllDevices() {
    for (var device in devices) {
      print(device.deviceInfo());
    }
  }
}
