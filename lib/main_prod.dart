
import 'package:flutter/widgets.dart';
import 'package:job_finder/injection_container.dart' as di;
import 'app.dart';
import 'config/base_url_config.dart';
import 'config/flavor_config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FlavorConfig(
    flavor: Flavor.PRODUCTION,
    values: FlavorValues(baseUrl: BaseUrlConfig().baseUrlProduction),
  );
  await di.init();
  runApp(App());
}
