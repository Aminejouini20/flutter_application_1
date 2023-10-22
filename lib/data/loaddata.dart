// lib/data/loaddata.dart
import 'package:scaffoldapp/domain/Affirmation.dart';
import 'package:scaffoldapp/data/AppConstant.dart';

List<Affirmation> loaddata() {
  return List<Affirmation>.generate(
    AppConstant.affirmations.length,
    (index) => Affirmation(
      image: AppConstant.photos[index],
      desc: AppConstant.affirmations[index],
    ),
  );
}
