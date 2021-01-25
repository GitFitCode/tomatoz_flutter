import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stacked/stacked.dart';
import 'package:tomatoz_flutter/app/constants.dart';
import 'package:tomatoz_flutter/ui/views/home/home_viewmodel.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
        builder: (context, model, child) => Scaffold(
              appBar: AppBar(
                shadowColor: Colors.transparent,
                backgroundColor: model.currentBackgroundColor,
                leading: IconButton(
                  onPressed: null,
                  icon: FaIcon(
                    FontAwesomeIcons.bars,
                    color: Colors.black,
                  ),
                ),
                actions: [
                  IconButton(
                    onPressed: null,
                    icon: FaIcon(
                      FontAwesomeIcons.ellipsisH,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
              body: Stack(
                children: [
                  Container(color: model.currentBackgroundColor),
                  Container(
                    decoration: BoxDecoration(
                      color: HOME_CONTENT_BG_COLOR,
                      border: Border.all(
                        color: Colors.transparent,
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    padding: EdgeInsets.all(30.0),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            '25:00',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          FlatButton(
                            onPressed: null,
                            child: Text(
                              'Reset',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: Icon(
                                FontAwesomeIcons.stopwatch,
                                color: Colors.white,
                                size: 200.0,
                              ),
                            ),
                          ),
                          Flexible(
                            child: FlatButton(
                              onPressed: null,
                              child: Text(
                                'START',
                                style: TextStyle(
                                  color: model.currentBackgroundColor,
                                  fontSize: 33.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                '10',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                ),
                              ),
                              Text(
                                '25',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                ),
                              ),
                              Text(
                                '5',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
        viewModelBuilder: () => HomeViewModel());
  }
}
