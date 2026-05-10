import 'package:moviebase/model/studio.dart';

const syncopy = Studio(
  name: "Syncopy",
  logo: "assets/images/syncopy_banner.png",
);
const universal = Studio(
  name: "Universal",
  logo: "assets/images/universal_banner.png",
);
const warner = Studio(name: "Warner", logo: "assets/images/warner_banner.png");
const paramount = Studio(
  name: "Paramount",
  logo: "assets/images/paramount_banner.png",
);
const marvel = Studio(name: "Marvel", logo: "assets/images/marvel_banner.png");
const disney = Studio(name: "Disney", logo: "assets/images/disney_banner.png");
const columbia = Studio(
  name: "Columbia",
  logo: "assets/images/columbia_banner.png",
);

List<Studio> getAllStudios() {
  return const [
    syncopy,
    universal,
    warner,
    paramount,
    marvel,
    disney,
    columbia,
  ];
}
