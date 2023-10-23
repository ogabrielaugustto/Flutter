import 'package:flutter/material.dart';
import 'package:flutter_pratica_app/pages/dados_cadastrais.dart';
import 'package:flutter_pratica_app/pages/page1.dart';
import 'package:flutter_pratica_app/pages/page2.dart';
import 'package:flutter_pratica_app/pages/page3.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PageController controller = PageController(initialPage: 0);
  int positionPage = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text("Main Page")),
        drawer: Drawer(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      width: double.infinity,
                      child: const Text("Dados cadastrais")),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DadosCadastraisPage(
                                  texto: "Meus dados",
                                  dados: ["Nome", "Endereço"],
                                )));
                  },
                ),
                const Divider(),
                InkWell(
                  child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      width: double.infinity,
                      child: const Text("Termos de Uso")),
                  onTap: () {},
                ),
                const Divider(),
                InkWell(
                  child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      width: double.infinity,
                      child: const Text("Configurações")),
                  onTap: () {},
                ),
                const Divider(),
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: PageView(
                  controller: controller,
                  onPageChanged: (value) {
                    setState(() {
                      positionPage = value;
                    });
                  },
                  children: const [
                    Page1Page(),
                    Page2Page(),
                    Page3Page(),
                  ]),
            ),
            BottomNavigationBar(
                onTap: (value) {
                  controller.jumpToPage(value);
                },
                currentIndex: positionPage,
                items: const [
                  BottomNavigationBarItem(
                      label: "Pag 1", icon: Icon(Icons.home)),
                  BottomNavigationBarItem(
                      label: "Pag 2", icon: Icon(Icons.add)),
                  BottomNavigationBarItem(
                      label: "Pag 3", icon: Icon(Icons.person))
                ])
          ],
        ),
      ),
    );
  }
}
