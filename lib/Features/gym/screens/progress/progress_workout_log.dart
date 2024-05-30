import 'package:fit_body/Utils/constants/exports.dart';

class ProgressWorkoutLog extends StatelessWidget {
  const ProgressWorkoutLog({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        29.heightBox,
        const MDivider(lineColor: Colors.white),
        15.heightBox,
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              "choose data".text.white.make(),
              "chhose month".text.white.make()
            ]),
        15.heightBox,
        const MDivider(lineColor: Colors.white),
        ElevatedButton(
          onPressed: () {
            showDatePicker(
                context: context,
                firstDate: DateTime(1980),
                lastDate: DateTime(2100));
          },
          child: const Text('show date'),
        )
      ],
    ).px(35.w);
  }
}
