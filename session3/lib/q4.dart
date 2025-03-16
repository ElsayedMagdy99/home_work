/*Use Map and List to create a program that stores weather data for different cities (temperature,
 humidity, etc.). Write a function that can retrieve and print weather details using a city name*/

void main() {
  cairoWeather('cairo');
  londonWeather('london');
  newYorkWeather('newYork');
}

void cairoWeather(String cairo) {
  Map<String, Map<String, dynamic>> weatherData = {
    'cairo': {
      'temperature': 30,
      'humidity': 50,
      'condition': 'Sunny',
    }
  };
  print(weatherData);
}

void londonWeather(String london) {
  Map<String, Map<String, dynamic>> WeatherData = {
    'london': {
      'temperature': 18,
      'humidity': 70,
      'condition': 'Cloudy',
    }
  };
  print(WeatherData);
}

void newYorkWeather(String newYork) {
  Map<String, Map<String, dynamic>> WeatherData = {
    'New York': {
      'temperature': 20,
      'humidity': 60,
      'condition': 'Rainy',
    }
  };
  print(WeatherData);
}
