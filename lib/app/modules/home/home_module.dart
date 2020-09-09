import 'presenter/controllers/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'presenter/pages/home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [Bind((i) => HomeController())];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute,
            child: (_, __) => HomePage(controller: to.get<HomeController>()))
      ];

  static Inject get to => Inject<HomeModule>.of();
}
