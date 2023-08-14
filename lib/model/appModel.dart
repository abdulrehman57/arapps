class APPModel {
  APPModel({this.imageUrl, this.title});

  String? imageUrl;
  String? title;
}

// App Model Data
final app1 = APPModel(imageUrl: 'images/dicee/dicee.png', title: 'Dicee APP');
final app2 =
    APPModel(imageUrl: 'images/magicball/magicball.png', title: 'Magic Ball');
final app3 = APPModel(imageUrl: 'images/piano.png', title: 'Piano App');
final app4 = APPModel(imageUrl: 'images/quiz.jpg', title: 'Quiz App');
final app5 =
    APPModel(imageUrl: 'images/destini/destini.png', title: 'Destini App');
final app6 = APPModel(imageUrl: 'images/bmi.jpg', title: 'Calculator');

//List of Model App

List<APPModel> appList = [app1, app2, app3, app4, app5, app6];
