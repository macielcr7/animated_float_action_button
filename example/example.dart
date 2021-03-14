import 'package:animated_float_action_button/animated_floating_action_button.dart';
import 'package:flutter/material.dart';

class ExamplePage extends StatefulWidget {
  ExamplePage({Key? key, this.title}) : super(key: key);

  final String? title;
  final GlobalKey<AnimatedFloatingActionButtonState> fabKey = GlobalKey();

  @override
  _ExamplePageState createState() => _ExamplePageState();
}

class _ExamplePageState extends State<ExamplePage> {
  Widget add() {
    return FloatActionButtonText(
      onPressed: (){
        widget.fabKey.currentState!.animate();
      },
      icon: Icons.add,
      text: "Ativar/Desativar Âncora",
      textLeft: -215,
    );
  }

  Widget image() {
    return FloatActionButtonText(
      onPressed: (){
        widget.fabKey.currentState!.animate();
      },
      icon: Icons.image,
      textLeft: -150,
      text: "Visualizar Rota",
    );
  }

  Widget inbox() {
    return FloatActionButtonText(
      onPressed: (){
        widget.fabKey.currentState!.animate();
      },
      icon: Icons.inbox,
      textLeft: -135,
      text: "Desbloquear",
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!),
      ),
      body: Container(),
      floatingActionButton: AnimatedFloatingActionButton(
        key: widget.fabKey,
        fabButtons: <Widget>[
          add(),
          image(),
          inbox(),
        ],
        colorStartAnimation: Colors.blue,
        colorEndAnimation: Colors.red,
        animatedIconData: AnimatedIcons.menu_close,
      ),
    );
  }
}
