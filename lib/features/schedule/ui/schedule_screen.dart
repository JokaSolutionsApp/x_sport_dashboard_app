import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:x_sport_dashboard_app/core/utils/constants/colors.dart';
import 'package:x_sport_dashboard_app/core/utils/constants/styles.dart';
import 'package:x_sport_dashboard_app/core/widgets/app_icon_button.dart';
import 'package:x_sport_dashboard_app/core/widgets/app_text_button.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  final DateRangePickerController datePickerController =
      DateRangePickerController();
  DateTime now = DateTime(
      DateTime.now().year, DateTime.now().month, DateTime.now().day, 13, 0);

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
                const Text('daily'),
                AppIconButton(
                  onTap: () {},
                  icon: const Icon(
                    Icons.filter_list,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIconButton(
                  onTap: () {
                    datePickerController.backward!();
                    setState(() {
                      now = datePickerController.displayDate!;
                    });
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                  ),
                ),
                Text(
                  context.tr(DateFormat(
                          'MMMM', Locale(context.locale.toString()).toString())
                      .format(now)),
                ),
                AppIconButton(
                  onTap: () {
                    datePickerController.forward!();
                    setState(() {
                      now = datePickerController.displayDate!;
                    });
                  },
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 300.h,
              child: SfTheme(
                data: SfThemeData(
                  dateRangePickerThemeData: SfDateRangePickerThemeData(
                    leadingDatesTextStyle: TextStyles.secondaryTextLight12,
                    trailingDatesTextStyle: TextStyles.secondaryTextLight12,
                    selectionColor: ColorsManager.primary,
                    todayHighlightColor: ColorsManager.primary,
                    backgroundColor: ColorsManager.white,
                  ),
                ),
                child: SfDateRangePicker(
                  initialSelectedDate: now,
                  controller: datePickerController,
                  headerHeight: 0,
                  view: DateRangePickerView.month,
                  onViewChanged: (args) {
                    if (init == false) {
                      setState(() {
                        now = datePickerController.displayDate!;
                      });
                    }
                    init = false;
                  },
                  monthViewSettings: const DateRangePickerMonthViewSettings(
                    firstDayOfWeek: 6,
                    showTrailingAndLeadingDates: true,
                    numberOfWeeksInView: 6,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 100.h,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.w,
                      vertical: 10.h,
                    ),
                    child: AppTextButton(
                      withShadow: true,
                      buttonHeight: 35.h,
                      buttonWidth: 111.w,
                      text: context.tr('floor', args: [' (${index + 1})']),
                      textStyle: selectedIndex == index
                          ? TextStyles.whiteBold12
                          : TextStyles.primaryBold12,
                      backgroundColor: selectedIndex == index
                          ? ColorsManager.primary
                          : ColorsManager.white,
                      onPressed: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: SfCalendar(
                headerHeight: 0,
                viewHeaderHeight: 0,
                view: CalendarView.day,
                todayHighlightColor: ColorsManager.primary,
                timeSlotViewSettings: TimeSlotViewSettings(
                  allDayPanelColor: ColorsManager.primary,
                  timeIntervalHeight: 100.h,
                  timeFormat: 'h:mm a',
                  startHour: 1,
                  endHour: 24,
                  timeInterval: const Duration(
                    hours: 1,
                    minutes: 30,
                  ),
                  minimumAppointmentDuration: const Duration(
                    hours: 1,
                    minutes: 30,
                  ),
                ),
                appointmentBuilder: (context, calendarAppointmentDetails) {
                  return ColoredBox(
                    color: ColorsManager.appointmentBackgroundRed,
                    child: Text(
                      calendarAppointmentDetails.appointments.first.subject,
                      style: const TextStyle(
                        color: ColorsManager.appointmentForegroundOrange,
                      ),
                    ),
                  );
                },
                dataSource: _getCalendarDataSource(),
              ),
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
