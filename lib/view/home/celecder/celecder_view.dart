// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_calendar/calendar.dart';
// import 'package:intl/intl.dart'; // Make sure to import this
// import 'package:twym_2024/utils/common_colors.dart';
// import 'package:twym_2024/utils/constant.dart';
// import 'package:twym_2024/utils/local_images.dart';
//
// class CalenderView extends StatefulWidget {
//   const CalenderView({super.key});
//
//   @override
//   _CalenderViewState createState() => _CalenderViewState();
// }
//
// class _CalenderViewState extends State<CalenderView> {
//   int selectedIndex = 0;
//   List<String> calenderType = ["Day", "Week", "Month"];
//   DateTime currentDate = DateTime.now();
//   List<Appointment> _appointments = []; // Initialize as empty
//
//   // Variables for dialog content
//   String? _subjectText;
//   String? _dateText;
//   String? _startTimeText;
//   String? _endTimeText;
//   String? _timeDetails;
//
//   @override
//   void initState() {
//     super.initState();
//     _setStaticAppointments(); // Set static appointments
//   }
//
//   void _setStaticAppointments() {
//     _appointments = [
//       Appointment(
//         startTime: DateTime.now().add(Duration(days: 1)),
//         endTime: DateTime.now().add(Duration(days: 1, hours: 1)),
//         subject: 'Meeting with Team',
//         color: Colors.blue,
//         isAllDay: false,
//       ),
//       Appointment(
//         startTime: DateTime.now().add(Duration(days: 2)),
//         endTime: DateTime.now().add(Duration(days: 2, hours: 2)),
//         subject: 'Doctor Appointment',
//         color: Colors.green,
//         isAllDay: false,
//       ),
//       Appointment(
//         startTime: DateTime.now().add(Duration(days: 3)),
//         endTime: DateTime.now().add(Duration(days: 3, hours: 1)),
//         subject: 'Project Deadline',
//         color: Colors.red,
//         isAllDay: true,
//       ),
//     ];
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     String monthYear =
//         "${getMonthString(currentDate.month)} ${currentDate.year}";
//     return Scaffold(
//       body: Padding(
//         padding: kCommonScreenPadding,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(bottom: 10),
//               child: Row(
//                 children: [
//                   Text(
//                     "Calendar",
//                     style: getAppStyle(
//                         color: CommonColors.blackColor,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 18),
//                   ),
//                   GestureDetector(
//                     onTap: () {
//                       showMonthPicker(context);
//                     },
//                     child: Container(
//                       height: 32,
//                       padding: const EdgeInsets.symmetric(horizontal: 8),
//                       margin: const EdgeInsets.only(left: 16),
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(14),
//                         border: Border.all(color: CommonColors.mGrey300),
//                       ),
//                       child: Row(
//                         children: [
//                           Text(
//                             monthYear,
//                             style: getAppStyle(
//                               color: CommonColors.mGrey,
//                               fontSize: 16,
//                             ),
//                           ),
//                           const SizedBox(width: 4),
//                           Image.asset(LocalImages.img_arrow_down),
//                         ],
//                       ),
//                     ),
//                   ),
//                   const Spacer(),
//                   Image.asset(LocalImages.img_calendar),
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 32,
//               child: ListView.builder(
//                 shrinkWrap: true,
//                 scrollDirection: Axis.horizontal,
//                 itemCount: calenderType.length,
//                 itemBuilder: (BuildContext context, int index) {
//                   bool isSelected = selectedIndex == index;
//                   return Padding(
//                     padding: const EdgeInsets.only(right: 5),
//                     child: GestureDetector(
//                       onTap: () {
//                         setState(() {
//                           selectedIndex = index;
//                         });
//                       },
//                       child: Container(
//                         decoration: BoxDecoration(
//                           border: Border.all(color: CommonColors.appGreenColor),
//                           color: isSelected
//                               ? CommonColors.appGreenColor.withOpacity(0.2)
//                               : CommonColors.mWhite,
//                           borderRadius:
//                               const BorderRadius.all(Radius.circular(25)),
//                         ),
//                         child: Padding(
//                           padding: const EdgeInsets.only(
//                               left: 15, right: 15, top: 2, bottom: 2),
//                           child: Center(
//                             child: Text(
//                               calenderType[index],
//                               style: getAppStyle(
//                                   color: isSelected
//                                       ? CommonColors.appGreenColor
//                                       : CommonColors.mGrey,
//                                   fontSize: 18),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//             const SizedBox(height: 10),
//             Expanded(
//               child: IndexedStack(
//                 index: selectedIndex,
//                 children: [
//                   SfCalendar(
//                     view: CalendarView.day,
//                     monthViewSettings: const MonthViewSettings(
//                         appointmentDisplayMode:
//                             MonthAppointmentDisplayMode.appointment),
//                     dataSource: AppointmentDataSource(_appointments),
//                     onTap: calendarTapped,
//                   ),
//                   SfCalendar(
//                     view: CalendarView.week,
//                     timeSlotViewSettings:
//                         TimeSlotViewSettings(timeInterval: Duration(hours: 2)),
//                     monthViewSettings: const MonthViewSettings(
//                         appointmentDisplayMode:
//                             MonthAppointmentDisplayMode.appointment),
//                     dataSource: AppointmentDataSource(_appointments),
//                     onTap: calendarTapped,
//                   ),
//                   SfCalendar(
//                     view: CalendarView.month,
//                     monthViewSettings: const MonthViewSettings(
//                         appointmentDisplayMode:
//                             MonthAppointmentDisplayMode.appointment),
//                     dataSource: AppointmentDataSource(_appointments),
//                     onTap: (CalendarTapDetails details) {
//                       calendarTapped(details); // Call your method here
//                     },
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   void calendarTapped(CalendarTapDetails details) {
//     if (details.targetElement == CalendarElement.appointment ||
//         details.targetElement == CalendarElement.agenda) {
//       // Check if appointments are available
//       if (details.appointments != null && details.appointments!.isNotEmpty) {
//         final Appointment appointmentDetails = details.appointments![0];
//         _subjectText = appointmentDetails.subject;
//         _dateText =
//             DateFormat('MMMM dd, yyyy').format(appointmentDetails.startTime);
//         _startTimeText =
//             DateFormat('hh:mm a').format(appointmentDetails.startTime);
//         _endTimeText = DateFormat('hh:mm a').format(appointmentDetails.endTime);
//
//         if (appointmentDetails.isAllDay) {
//           _timeDetails = 'All day';
//         } else {
//           _timeDetails = '$_startTimeText - $_endTimeText';
//         }
//
//         showDialog(
//           context: context,
//           builder: (BuildContext context) {
//             return AlertDialog(
//               title: Text('$_subjectText'),
//               content: Container(
//                 height: 80,
//                 child: Column(
//                   children: <Widget>[
//                     Row(
//                       children: <Widget>[
//                         Text(
//                           '$_dateText',
//                           style: TextStyle(
//                             fontWeight: FontWeight.w400,
//                             fontSize: 20,
//                           ),
//                         ),
//                       ],
//                     ),
//                     Row(
//                       children: <Widget>[
//                         Text(''),
//                       ],
//                     ),
//                     Row(
//                       children: <Widget>[
//                         Text(_timeDetails!,
//                             style: TextStyle(
//                                 fontWeight: FontWeight.w400, fontSize: 15)),
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//               actions: <Widget>[
//                 TextButton(
//                   onPressed: () {
//                     Navigator.of(context).pop();
//                   },
//                   child: Text('Close'),
//                 ),
//               ],
//             );
//           },
//         );
//       }
//     }
//   }
//
//   void showMonthPicker(BuildContext context) {
//     try {
//       showDialog(
//         context: context,
//         builder: (BuildContext context) {
//           return AlertDialog(
//             title: const Text("Select Month"),
//             content: SizedBox(
//               height: 250,
//               width: double.maxFinite,
//               child: GridView.builder(
//                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 4,
//                 ),
//                 itemCount: 12,
//                 itemBuilder: (context, index) {
//                   return GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         currentDate = DateTime(currentDate.year, index + 1, 1);
//                       });
//                       Navigator.pop(context);
//                     },
//                     child: Container(
//                       alignment: Alignment.center,
//                       margin: const EdgeInsets.all(4),
//                       decoration: BoxDecoration(
//                         border: Border.all(color: CommonColors.appGreenColor),
//                         borderRadius: BorderRadius.circular(8),
//                         color: currentDate.month == index + 1
//                             ? CommonColors.appGreenColor.withOpacity(0.2)
//                             : CommonColors.mWhite,
//                       ),
//                       child: Text(
//                         getMonthString(index + 1),
//                         style: TextStyle(
//                           color: currentDate.month == index + 1
//                               ? CommonColors.appGreenColor
//                               : CommonColors.mGrey,
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//           );
//         },
//       );
//     } catch (e) {
//       print("Error showing month picker: $e");
//     }
//   }
//
//   String getMonthString(int month) {
//     switch (month) {
//       case 1:
//         return 'January';
//       case 2:
//         return 'February';
//       case 3:
//         return 'March';
//       case 4:
//         return 'April';
//       case 5:
//         return 'May';
//       case 6:
//         return 'June';
//       case 7:
//         return 'July';
//       case 8:
//         return 'August';
//       case 9:
//         return 'September';
//       case 10:
//         return 'October';
//       case 11:
//         return 'November';
//       case 12:
//         return 'December';
//       default:
//         return '';
//     }
//   }
// }
//
// class AppointmentDataSource extends CalendarDataSource {
//   AppointmentDataSource(List<Appointment> source) {
//     appointments = source;
//   }
// }
//
//
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:intl/intl.dart';
import 'package:twym_2024/utils/common_colors.dart';
import 'package:twym_2024/utils/constant.dart';
import 'package:twym_2024/utils/local_images.dart';

class CalenderView extends StatefulWidget {
  const CalenderView({super.key});

  @override
  State<CalenderView> createState() => _CalenderViewState();
}

class _CalenderViewState extends State<CalenderView> {
  int selectedIndex = 0;
  List<String> calenderType = ["Day", "3 Day", "Week", "Month"];
  DateTime currentDate = DateTime.now();
  List<Appointment> _appointments = [];

  String? _subjectText;
  String? _dateText;
  String? _startTimeText;
  String? _endTimeText;
  String? _timeDetails;

  @override
  void initState() {
    super.initState();
    _setStaticAppointments();
  }

  void _setStaticAppointments() {
    _appointments = [
      Appointment(
        startTime: DateTime.now().add(const Duration(days: 2)),
        endTime: DateTime.now().add(const Duration(days: 1, hours: 1)),
        subject: 'Meeting',
        color: Colors.blue,
        isAllDay: false,
      ),
      Appointment(
        startTime: DateTime.now().add(const Duration(days: 2)),
        endTime: DateTime.now().add(const Duration(days: 2, hours: 2)),
        subject: 'Doctor Appointment',
        color: Colors.green,
        isAllDay: false,
      ),
      Appointment(
        startTime: DateTime.now().add(const Duration(days: 3)),
        endTime: DateTime.now().add(const Duration(days: 3, hours: 1)),
        subject: 'Project Deadline',
        color: Colors.red,
        isAllDay: true,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    String monthYear =
        "${getMonthString(currentDate.month)} ${currentDate.year}";
    return Padding(
      padding: kCommonScreenPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              children: [
                Text(
                  "Calendar",
                  style: getAppStyle(
                      color: CommonColors.blackColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                GestureDetector(
                  onTap: () {
                    showMonthPicker(context);
                  },
                  child: Container(
                    height: 32,
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    margin: const EdgeInsets.only(left: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: CommonColors.mGrey300),
                    ),
                    child: Row(
                      children: [
                        Text(
                          monthYear,
                          style: getAppStyle(
                            color: CommonColors.mGrey,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(width: 4),
                        Image.asset(LocalImages.img_arrow_down),
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                Image.asset(LocalImages.img_calendar),
              ],
            ),
          ),
          SizedBox(
            height: 32,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: calenderType.length,
              itemBuilder: (BuildContext context, int index) {
                bool isSelected = selectedIndex == index;
                return Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: CommonColors.appGreenColor),
                        color: isSelected
                            ? CommonColors.appGreenColor.withOpacity(0.2)
                            : CommonColors.mWhite,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(25)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 15, right: 15, top: 2, bottom: 2),
                        child: Center(
                          child: Text(
                            calenderType[index],
                            style: getAppStyle(
                                color: isSelected
                                    ? CommonColors.appGreenColor
                                    : CommonColors.mGrey,
                                fontSize: 14),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: IndexedStack(
              index: selectedIndex,
              children: [
                SfCalendar(
                  backgroundColor: Colors.transparent,
                  view: CalendarView.day,
                  headerStyle: CalendarHeaderStyle(
                    textAlign: TextAlign.center,
                    backgroundColor:
                        CommonColors.appGreenColor.withOpacity(0.08),
                    textStyle: getAppStyle(
                        color: CommonColors.blackColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  todayHighlightColor: CommonColors.appGreenColor,
                  showNavigationArrow: true,
                  timeSlotViewSettings: const TimeSlotViewSettings(
                      timeInterval: Duration(hours: 2)),
                  monthViewSettings: const MonthViewSettings(
                      appointmentDisplayMode:
                          MonthAppointmentDisplayMode.appointment),
                  dataSource: AppointmentDataSource(_appointments),
                  onTap: calendarTapped,
                ),
                SfCalendar(
                  view: CalendarView.week,
                  todayHighlightColor: CommonColors.appGreenColor,
                  showNavigationArrow: true,
                  showWeekNumber: true,
                  headerStyle: CalendarHeaderStyle(
                    textAlign: TextAlign.center,
                    backgroundColor:
                        CommonColors.appGreenColor.withOpacity(0.08),
                    textStyle: getAppStyle(
                        color: CommonColors.blackColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  timeSlotViewSettings: const TimeSlotViewSettings(
                    timeInterval: Duration(hours: 2),
                    numberOfDaysInView: 3,
                  ),
                  monthViewSettings: const MonthViewSettings(
                      appointmentDisplayMode:
                          MonthAppointmentDisplayMode.appointment),
                  dataSource: AppointmentDataSource(_appointments),
                  onTap: calendarTapped,
                ),
                SfCalendar(
                  view: CalendarView.week,
                  todayHighlightColor: CommonColors.appGreenColor,
                  showWeekNumber: true,
                  showNavigationArrow: true,
                  headerStyle: CalendarHeaderStyle(
                    textAlign: TextAlign.center,
                    backgroundColor:
                        CommonColors.appGreenColor.withOpacity(0.08),
                    textStyle: getAppStyle(
                        color: CommonColors.blackColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  timeSlotViewSettings: const TimeSlotViewSettings(
                      timeInterval: Duration(hours: 2)),
                  monthViewSettings: const MonthViewSettings(
                      appointmentDisplayMode:
                          MonthAppointmentDisplayMode.appointment),
                  dataSource: AppointmentDataSource(_appointments),
                  onTap: calendarTapped,
                ),
                SfCalendar(
                  todayHighlightColor: CommonColors.appGreenColor,
                  view: CalendarView.month,
                  showNavigationArrow: true,
                  headerStyle: CalendarHeaderStyle(
                    textAlign: TextAlign.center,
                    backgroundColor:
                        CommonColors.appGreenColor.withOpacity(0.08),
                    textStyle: getAppStyle(
                        color: CommonColors.blackColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  monthViewSettings: const MonthViewSettings(
                      appointmentDisplayMode:
                          MonthAppointmentDisplayMode.appointment),
                  dataSource: AppointmentDataSource(_appointments),
                  onTap: (CalendarTapDetails details) {
                    calendarTapped(details); // Call your method here
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void calendarTapped(CalendarTapDetails details) {
    if (details.targetElement == CalendarElement.appointment ||
        details.targetElement == CalendarElement.agenda) {
      if (details.appointments != null && details.appointments!.isNotEmpty) {
        final Appointment appointmentDetails = details.appointments![0];
        _subjectText = appointmentDetails.subject;
        _dateText =
            DateFormat('MMMM dd, yyyy').format(appointmentDetails.startTime);
        _startTimeText =
            DateFormat('hh:mm a').format(appointmentDetails.startTime);
        _endTimeText = DateFormat('hh:mm a').format(appointmentDetails.endTime);

        if (appointmentDetails.isAllDay) {
          _timeDetails = 'All day';
        } else {
          _timeDetails = '$_startTimeText - $_endTimeText';
        }

        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('$_subjectText'),
              content: SizedBox(
                height: 80,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          '$_dateText',
                          style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    const Row(
                      children: <Widget>[
                        Text(''),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text(_timeDetails!,
                            style: const TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 15)),
                      ],
                    )
                  ],
                ),
              ),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Close'),
                ),
              ],
            );
          },
        );
      }
    }
  }

  void showMonthPicker(BuildContext context) {
    try {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Select Month"),
            content: SizedBox(
              height: 250,
              width: double.infinity,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemCount: 12,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        currentDate = DateTime(currentDate.year, index + 1, 1);
                      });
                      Navigator.pop(context);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        border: Border.all(color: CommonColors.appGreenColor),
                        borderRadius: BorderRadius.circular(8),
                        color: currentDate.month == index + 1
                            ? CommonColors.appGreenColor.withOpacity(0.2)
                            : CommonColors.mWhite,
                      ),
                      child: Text(
                        getMonthString(index + 1),
                        style: TextStyle(
                          fontSize: 12,
                          color: currentDate.month == index + 1
                              ? CommonColors.appGreenColor
                              : CommonColors.mGrey,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        },
      );
    } catch (e) {
      print("Error showing month picker: $e");
    }
  }

  String getMonthString(int month) {
    switch (month) {
      case 1:
        return 'January';
      case 2:
        return 'February';
      case 3:
        return 'March';
      case 4:
        return 'April';
      case 5:
        return 'May';
      case 6:
        return 'June';
      case 7:
        return 'July';
      case 8:
        return 'August';
      case 9:
        return 'September';
      case 10:
        return 'October';
      case 11:
        return 'November';
      case 12:
        return 'December';
      default:
        return '';
    }
  }
}

class AppointmentDataSource extends CalendarDataSource {
  AppointmentDataSource(List<Appointment> source) {
    appointments = source;
  }
}
