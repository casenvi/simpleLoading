import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../controllers/home_controller.dart';

class HomePage extends StatelessWidget {
  final HomeController controller;

  const HomePage({Key key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Form'),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Form(
              child: Column(
                children: [
                  Observer(builder: (_) {
                    return CheckboxListTile(
                      title: const Text('CheckboxListTile'),
                      value: controller.checkboxListTitle,
                      onChanged: (_) => controller.invertCheckboxListTile(),
                      secondary: const Icon(Icons.power),
                    );
                  }),
                  Observer(builder: (_) {
                    return SwitchListTile(
                      title: const Text('SwitchListTile'),
                      value: controller.switchListTile,
                      onChanged: (_) => controller.invertSwitchListTile(),
                      secondary: const Icon(Icons.ac_unit),
                    );
                  }),
                  Observer(builder: (_) {
                    return Container(
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: TextField(
                        key: Key('email'),
                        decoration: InputDecoration(
                          labelText: 'TextField',
                        ),
                        onChanged: controller.changeTextField,
                      ),
                    );
                  }),
                  RaisedButton(
                    onPressed: () => controller.submit(),
                    child: Text('Save'),
                  ),
                ],
              ),
            ),
            Observer(builder: (_) {
              if (controller.saving) {
                return Stack(
                  children: [
                    Opacity(
                      opacity: 0.3,
                      child: const ModalBarrier(
                          dismissible: false, color: Colors.grey),
                    ),
                    Center(
                      child: CircularProgressIndicator(),
                    ),
                  ],
                );
              }
              return Container(
                height: 0,
                width: 0,
              );
            }),
          ],
        ),
      ),
    );
  }
}
