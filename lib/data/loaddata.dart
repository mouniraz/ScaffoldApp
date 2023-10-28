import '../domain/affirmation.dart';

import '../data/appConstant.dart';

List<Affirmation> loaddata() {
  return (List.generate(10, (index) => Affirmation(AppConstant.photos[index], AppConstant.affirmations[index])));
}
