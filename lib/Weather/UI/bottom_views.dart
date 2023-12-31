import 'package:flutter/material.dart';
import '../model/weather_model.dart';
import 'forecast_card.dart';


//Better way of doing business!
class BottomView extends StatelessWidget {
  final AsyncSnapshot<WeatherForecastModel> snapshot;

  const BottomView({Key? key,  required this.snapshot}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(
          "7-Day Weather Forecast".toUpperCase(),
          style: const TextStyle(fontSize: 14, color: Colors.black87),
        ),
        Container(
          height: 170,
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => const SizedBox(width: 4),
              itemCount: snapshot.data!.list!.length,
              itemBuilder: (context, index) => ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                child: Container(
                  width: MediaQuery.of(context).size.width / 2.2,
                  height: 160,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Colors.blueGrey,
                            // Color(0xff9661C3),
                            Colors.white
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight)),
                  child: forecastCard(snapshot, index),
                ),
              )),
        )
      ],
    );
  }
}


Widget bottomView(
    AsyncSnapshot<WeatherForecastModel> snapshot, BuildContext context) {
  var forecastList = snapshot.data!.list;

  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Text(
        "7-Day Weather Forecast".toUpperCase(),
        style: const TextStyle(fontSize: 14, color: Colors.white),
      ),
      Container(
        height: 170,
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => const SizedBox(width: 18),
            itemCount: forecastList!.length,
            itemBuilder: (context, index) => ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              child: Container(
                width: MediaQuery.of(context).size.width / 2.4,
                height: 160,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                          Color(0xff9661C3), Colors.white
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight)),
                child: forecastCard(snapshot, index),
              ),
            )),
      )
    ],
  );
}