import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading {
  static bool loading = false;
  static Widget loadingScreen(Widget widget,String loadingText) {
    if (Loading.loading) {
      return Stack(
        children: <Widget>[
          widget,
          Opacity(
              opacity: 0.8,
              child: ModalBarrier(
                color: Colors.black87,
              )),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SpinKitWave(
                color: Colors.white,
                size: 50,
                type: SpinKitWaveType.center,
              ),
              Text(loadingText,style: TextStyle(color: Colors.white),)
            ],
          )
        ],
      );
    } else {
      return widget;
    }
  }
}