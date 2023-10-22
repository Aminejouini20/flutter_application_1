import "package:flutter_application_1/domain/Affirmation.dart";
import "package:flutter_application_1/data/AppConstant.dart";

List<Affirmation> loaddata() {
  return List<Affirmation>.generate(
    AppConstant.affirmations.length,
    (index) => Affirmation(
      image: AppConstant.photos[index],
      desc: AppConstant.affirmations[index],
    ),
  );
}
