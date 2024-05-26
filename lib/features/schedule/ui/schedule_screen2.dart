import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_timetable/flutter_timetable.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:x_sport_dashboard_app/core/helpers/spacing.dart';
import 'package:x_sport_dashboard_app/core/utils/constants/colors.dart';
import 'package:x_sport_dashboard_app/core/utils/constants/styles.dart';
import 'package:x_sport_dashboard_app/core/widgets/app_icon_button.dart';
import 'package:x_sport_dashboard_app/core/widgets/app_text_button.dart';

class ScheduleScreen2 extends StatefulWidget {
  const ScheduleScreen2({super.key});

  @override
  State<ScheduleScreen2> createState() => _ScheduleScreen2State();
}

class _ScheduleScreen2State extends State<ScheduleScreen2> {
  final DateRangePickerController datePickerController =
      DateRangePickerController();
  DateTime now = DateTime(
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day,
    13,
    0,
  );

  bool init = true;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIconButton(
                  onTap: () {},
                  icon: const Icon(
                    Icons.filter_list_alt,
                  ),
                ),
                const Text('weekly'),
                AppIconButton(
                  onTap: () {},
                  icon: const Icon(
                    Icons.filter_list,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IntrinsicHeight(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppIconButton(
                      backgroundColor: ColorsManager.grey,
                      icon: const Icon(
                        Icons.skip_next_outlined,
                        size: 15.0,
                        color: ColorsManager.secondaryText,
                      ),
                      onTap: () {},
                    ),
                    horizontalSpace(7),
                    AppIconButton(
                      backgroundColor: ColorsManager.white,
                      icon: const Icon(
                        Icons.arrow_back_ios_sharp,
                        size: 15.0,
                        color: ColorsManager.secondaryText,
                      ),
                      onTap: () {},
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        border: Border.symmetric(
                          horizontal: BorderSide(
                            color: ColorsManager.secondaryText,
                            width: 0.3,
                          ),
                        ),
                        color: ColorsManager.white,
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            children: [
                              const Icon(Icons.calendar_today_outlined),
                              horizontalSpace(8),
                              Text(
                                'date',
                                style: TextStyles.primaryTextRegular14,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    AppIconButton(
                      backgroundColor: ColorsManager.white,
                      icon: const Icon(
                        Icons.arrow_forward_ios_sharp,
                        size: 15.0,
                        color: ColorsManager.secondaryText,
                      ),
                      onTap: () {},
                    ),
                    horizontalSpace(7),
                    AppIconButton(
                      backgroundColor: ColorsManager.grey,
                      icon: const Icon(
                        Icons.skip_previous_outlined,
                        size: 15.0,
                        color: ColorsManager.secondaryText,
                      ),
                      onTap: () {},
                    ),
                    const Spacer(),
                    SizedBox(
                      height: 20.h,
                      width: 90.w,
                      child: AppTextButton(
                        text: 'may',
                        backgroundColor: ColorsManager.grey,
                        textStyle: TextStyles.primaryTextRegular14,
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // SizedBox(
            //   height: 300.h,
            //   child: SfTheme(
            //     data: SfThemeData(
            //       dateRangePickerThemeData: SfDateRangePickerThemeData(
            //         leadingDatesTextStyle: TextStyles.secondaryLight12,
            //         trailingDatesTextStyle: TextStyles.secondaryLight12,
            //         selectionColor: ColorsManager.primaryColor,
            //         todayHighlightColor: ColorsManager.primaryColor,
            //         backgroundColor: ColorsManager.white,
            //       ),
            //     ),
            //     child: SfDateRangePicker(
            //       initialSelectedDate: now,
            //       controller: datePickerController,
            //       headerHeight: 0,
            //       view: DateRangePickerView.month,
            //       onViewChanged: (args) {
            //         if (init == false) {
            //           setState(() {
            //             now = datePickerController.displayDate!;
            //           });
            //         }
            //         init = false;
            //       },
            //       monthViewSettings: const DateRangePickerMonthViewSettings(
            //         firstDayOfWeek: 6,
            //         showTrailingAndLeadingDates: true,
            //         numberOfWeeksInView: 6,
            //       ),
            //     ),
            //   ),
            // ),
            const Expanded(
              child: Timetable(),
              // time planner
              // TimePlanner(
              //   // time will be start at this hour on table
              //   startHour: 6,
              //   // time will be end at this hour on table
              //   endHour: 23,
              //   // each header is a column and a day
              //   headers: const [
              //     TimePlannerTitle(
              //       date: "3/10/2021",
              //       title: "sunday",
              //     ),
              //     TimePlannerTitle(

              //       title: "monday",
              //     ),
              //     TimePlannerTitle(
              //       date: "3/12/2021",
              //       title: "tuesday",
              //     ),
              //     TimePlannerTitle(
              //       date: "3/12/2021",
              //       title: "tuesday",
              //     ),
              //     TimePlannerTitle(
              //       date: "3/12/2021",
              //       title: "tuesday",
              //     ),
              //   ],
              //   // List of task will be show on the time planner
              //   tasks: [
              //     TimePlannerTask(
              //       // background color for task
              //       color: Colors.purple,
              //       // day: Index of header, hour: Task will be begin at this hour
              //       // minutes: Task will be begin at this minutes
              //       dateTime:
              //           TimePlannerDateTime(day: 0, hour: 14, minutes: 30),
              //       // Minutes duration of task
              //       minutesDuration: 90,
              //       // Days duration of task (use for multi days task)
              //       daysDuration: 1,
              //       onTap: () {},
              //       child: Text(
              //         'this is a task',
              //         style: TextStyle(color: Colors.grey[350], fontSize: 12),
              //       ),
              //     ),
              //   ],
              // ),
              // time table view
              // TimetableView(
              //   laneEventsList: [
              //     LaneEvents(
              //       lane: Lane(name: 'name', laneIndex: 0),
              //       events: [
              //         TableEvent(
              //           title: 'title',
              //           eventId: 0,
              //           laneIndex: 0,
              //           startTime: TableEventTime(hour: 13, minute: 0),
              //           endTime: TableEventTime(hour: 14, minute: 0),
              //         ),
              //       ],
              //     ),
              //     LaneEvents(
              //       lane: Lane(name: 'name', laneIndex: 0),
              //       events: [
              //         TableEvent(
              //           title: 'title',
              //           eventId: 0,
              //           laneIndex: 0,
              //           startTime: TableEventTime(hour: 13, minute: 0),
              //           endTime: TableEventTime(hour: 14, minute: 0),
              //         ),
              //       ],
              //     ),
              //     LaneEvents(
              //       lane: Lane(name: 'name', laneIndex: 0),
              //       events: [
              //         TableEvent(
              //           title: 'title',
              //           eventId: 0,
              //           laneIndex: 0,
              //           startTime: TableEventTime(hour: 13, minute: 0),
              //           endTime: TableEventTime(hour: 14, minute: 0),
              //         ),
              //       ],
              //     ),
              //     LaneEvents(
              //       lane: Lane(name: 'name', laneIndex: 0),
              //       events: [
              //         TableEvent(
              //           title: 'title',
              //           eventId: 0,
              //           laneIndex: 0,
              //           startTime: TableEventTime(hour: 13, minute: 0),
              //           endTime: TableEventTime(hour: 14, minute: 0),
              //         ),
              //       ],
              //     ),
              //   ],
              //   onEventTap: (v) {},
              //   timetableStyle: TimetableStyle(
              //     laneWidth: 0.5.sw,
              //     startHour: 0,
              //     endHour: 24,
              //     showTimeAsAMPM: true,
              //   ),
              //   onEmptySlotTap: (laneIndex, start, end) {},
              // ),
              // syncfusion calendar
              // SfCalendar(
              //   headerHeight: 0,
              //   view: CalendarView.week,
              //   todayHighlightColor: ColorsManager.primaryColor,
              //   timeSlotViewSettings: TimeSlotViewSettings(
              //     dateFormat: 'd',
              //     dayFormat: 'MMM',
              //     allDayPanelColor: ColorsManager.primaryColor,
              //     timeIntervalHeight: 130.h,
              //     timeFormat: 'h:mm a',
              //     startHour: 1,
              //     endHour: 24,
              //     timeInterval: const Duration(
              //       hours: 1,
              //       minutes: 30,
              //     ),
              //     minimumAppointmentDuration: const Duration(
              //       hours: 1,
              //       minutes: 30,
              //     ),
              //   ),
              //   appointmentBuilder: (context, calendarAppointmentDetails) {
              //     return ColoredBox(
              //       color: ColorsManager.appointmentBackgroundRed,
              //       child: Text(
              //         calendarAppointmentDetails.appointments.first.subject,
              //         style: const TextStyle(
              //           color: ColorsManager.appointmentForegroundOrange,
              //         ),
              //       ),
              //     );
              //   },
              //   dataSource: _getCalendarDataSource(),
              // ),
            ),
          ],
        ),
      ),
    );
  }
}

_AppointmentDataSource _getCalendarDataSource() {
  List<Appointment> appointments = <Appointment>[];
  appointments.add(
    Appointment(
      startTime: DateTime.now(),
      endTime: DateTime.now().add(const Duration(minutes: 90)),
      subject: 'Meeting',
      color: Colors.blue,
      startTimeZone: '',
      endTimeZone: '',
    ),
  );
  appointments.add(
    Appointment(
      startTime: DateTime.now(),
      endTime: DateTime.now().add(const Duration(minutes: 90)),
      subject: 'Meeting 2',
      color: Colors.blue,
      startTimeZone: '',
      endTimeZone: '',
    ),
  );

  return _AppointmentDataSource(appointments);
}

class _AppointmentDataSource extends CalendarDataSource {
  _AppointmentDataSource(List<Appointment> source) {
    appointments = source;
  }
}
