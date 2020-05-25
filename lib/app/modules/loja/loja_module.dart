import 'package:loja/app/modules/loja/loja_page.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'loja_controller.dart';

class LojaModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => LojaController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => LojaPage()),
      ];

  static Inject get to => Inject<LojaModule>.of();
}
