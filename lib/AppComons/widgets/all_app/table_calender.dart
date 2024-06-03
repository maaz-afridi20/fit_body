import 'package:fit_body/Utils/constants/exports.dart';
import 'package:intl/intl.dart';

class MTableCaleder extends StatelessWidget {
  const MTableCaleder({super.key});

  @override
  Widget build(BuildContext context) {
    final Rx<DateTime> todayDate = DateTime.now().obs;
    return Obx(() => Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r), color: Colors.white),
        child: TableCalendar(
                startingDayOfWeek: StartingDayOfWeek.monday,
                calendarBuilders: CalendarBuilders(dowBuilder: (context, day) {
                  final dayName = DateFormat.E().format(day);
                  return Container(
                          decoration: BoxDecoration(
                              color: MColors.darkPurpleColor,
                              borderRadius: BorderRadius.circular(18)),
                          child: Text(dayName,
                                  style: const TextStyle(color: Colors.white))
                              .centered())
                      .pOnly(left: 5);
                }),
                daysOfWeekHeight: 25,
                weekendDays: const [DateTime.sunday],
                daysOfWeekStyle: DaysOfWeekStyle(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(8.r)),
                    weekendStyle: const TextStyle(
                        color: MColors.balckColor, fontWeight: FontWeight.w400),
                    weekdayStyle: const TextStyle(color: Colors.white)),
                calendarStyle: const CalendarStyle(
                    defaultTextStyle: TextStyle(
                        color: MColors.darkPurpleColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                    outsideDaysVisible: false,
                    todayTextStyle: TextStyle(
                        color: MColors.balckColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                    weekendTextStyle: TextStyle(
                        color: MColors.balckColor,
                        fontWeight: FontWeight.w400)),
                onDaySelected: (selectedDay, focusedDay) =>
                    todayDate.value = selectedDay,
                selectedDayPredicate: (day) => isSameDay(day, todayDate.value),
                focusedDay: todayDate.value,
                headerStyle: const HeaderStyle(formatButtonVisible: false),
                headerVisible: false,
                firstDay: DateTime.utc(2010, 10, 16),
                lastDay: DateTime.utc(2030, 3, 14))
            .pSymmetric(h: 20.w, v: 15.h)));
  }
}
