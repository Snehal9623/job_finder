
import 'package:chucker_flutter/chucker_flutter.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:get_storage/get_storage.dart';
import 'package:job_finder/injection_container.dart' as di;
import 'app.dart';
import 'config/base_url_config.dart';
import 'config/flavor_config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  FlavorConfig(
    flavor: Flavor.DEVELOPMENT,
    values: FlavorValues(baseUrl: BaseUrlConfig().baseUrlBiofuelDevelopment),
  );
  await di.init();
  ChuckerFlutter.isDebugMode = true;
  ChuckerFlutter.showOnRelease = true;
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
    (value) => runApp(const App()),
  );
}
