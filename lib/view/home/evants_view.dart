// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:googleapis/calendar/v3.dart' as calendar;
// import 'package:googleapis_auth/auth_io.dart';
//
//
//
// class CalendarHomePage extends StatefulWidget {
//   @override
//   _CalendarHomePageState createState() => _CalendarHomePageState();
// }
//
// class _CalendarHomePageState extends State<CalendarHomePage> {
//   final _clientId = ClientId(
//       '302715725151-fb84i6nllf5m87sdivo5nq81rp21co7u.apps.googleusercontent.com',
//       '');
//   //final _clientId = ClientId('YOUR_CLIENT_ID', 'YOUR_CLIENT_SECRET');
//   List<calendar.Event> _events = [];
//
//   @override
//   void initState() {
//     super.initState();
//     _fetchEvents();
//   }
//
//   Future<void> _fetchEvents() async {
//     var client = await clientViaUserConsent(
//         _clientId, [calendar.CalendarApi.calendarScope], (url) {
//       // Show the URL to the user for authentication.
//       print('Please go to the following URL and grant access:');
//       print('  => $url');
//     });
//
//     var calendarApi = calendar.CalendarApi(client);
//     var events = await calendarApi.events.list('primary');
//     setState(() {
//       _events = events.items ?? [];
//     });
//   }
//
//   Future<void> _addEvent() async {
//     var client = await clientViaUserConsent(
//         _clientId, [calendar.CalendarApi.calendarScope], (url) {
//       print('Please go to the following URL and grant access:');
//       print('  => $url');
//     });
//
//     var calendarApi = calendar.CalendarApi(client);
//     var event = calendar.Event()
//       ..summary = 'New Event'
//       ..start = (calendar.EventDateTime()
//         ..dateTime = DateTime.now().add(Duration(days: 1)))
//       ..end = (calendar.EventDateTime()
//         ..dateTime = DateTime.now().add(Duration(days: 1, hours: 1)));
//
//     await calendarApi.events.insert(event, 'primary');
//     _fetchEvents(); // Refresh the event list
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Google Calendar Events')),
//       body: ListView.builder(
//         itemCount: _events.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text(_events[index].summary ?? 'No Title'),
//             subtitle: Text(_events[index].start?.dateTime?.toString() ?? ''),
//           );
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _addEvent,
//         tooltip: 'Add Event',
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:googleapis/calendar/v3.dart' as googleAPI;
import 'package:http/io_client.dart';
import 'package:http/http.dart';
import 'package:permission_handler/permission_handler.dart';

class CalendarEvents extends StatefulWidget {
  @override
  CalendarEventsState createState() => CalendarEventsState();
}

class CalendarEventsState extends State<CalendarEvents> {
  final GoogleSignIn _googleSignIn = GoogleSignIn(
    clientId:
        '302715725151-fb84i6nllf5m87sdivo5nq81rp21co7u.apps.googleusercontent.com', // Replace with your OAuth Client ID
    scopes: <String>[
      googleAPI.CalendarApi.calendarScope,
    ],
  );

  @override
  void initState() {
    super.initState();
    requestCalendarPermission(); // Request permission when the widget initializes
  }

  Future<void> requestCalendarPermission() async {
    if (await Permission.calendar.request().isGranted) {
      print("Calendar permission granted");
    } else {
      print("Calendar permission denied");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Event Calendar'),
      ),
      body: FutureBuilder<List<googleAPI.Event>>(
        future: getGoogleEventsData(),
        builder: (BuildContext context,
            AsyncSnapshot<List<googleAPI.Event>> snapshot) {
          return Stack(
            children: [
              SfCalendar(
                view: CalendarView.month,
                //initialDisplayDate: DateTime.now(),
                dataSource: GoogleDataSource(events: snapshot.data ?? []),
                monthViewSettings: const MonthViewSettings(
                  appointmentDisplayMode:
                      MonthAppointmentDisplayMode.appointment,
                ),
              ),
              snapshot.connectionState == ConnectionState.waiting
                  ? const Center(child: CircularProgressIndicator())
                  : Container(),
            ],
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    if (_googleSignIn.currentUser != null) {
      _googleSignIn.disconnect();
      _googleSignIn.signOut();
    }
    super.dispose();
  }

  // Future<List<googleAPI.Event>> getGoogleEventsData() async {
  //   final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
  //   if (googleUser == null) {
  //     // User did not sign in
  //     print("Sign-in failed or canceled.");
  //     return [];
  //   }
  //
  //   final GoogleAPIClient httpClient =
  //       GoogleAPIClient(await googleUser.authHeaders);
  //   final googleAPI.CalendarApi calendarAPI = googleAPI.CalendarApi(httpClient);
  //
  //   try {
  //     final googleAPI.Events? calEvents =
  //         await calendarAPI.events.list("primary");
  //     final List<googleAPI.Event> appointments = [];
  //
  //     if (calEvents?.items != null) {
  //       for (final event in calEvents!.items!) {
  //         if (event.start == null) {
  //           continue;
  //         }
  //         appointments.add(event);
  //       }
  //       print("Events retrieved: ${appointments.length}");
  //     } else {
  //       print("No events found.");
  //     }
  //
  //     return appointments;
  //   } catch (error) {
  //     print("Error fetching events: $error");
  //     return [];
  //   }
  // }
  Future<List<googleAPI.Event>> getGoogleEventsData() async {
    final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
    if (googleUser == null) {
      print("Sign-in failed or canceled.");
      return [];
    }
    print("Signed in as: ${googleUser.email}");

    final GoogleAPIClient httpClient =
        GoogleAPIClient(await googleUser.authHeaders);
    final googleAPI.CalendarApi calendarAPI = googleAPI.CalendarApi(httpClient);

    try {
      final googleAPI.Events? calEvents =
          await calendarAPI.events.list("primary");
      final List<googleAPI.Event> appointments = [];

      if (calEvents?.items != null) {
        for (final event in calEvents!.items!) {
          if (event.start == null) {
            print("Skipping event with no start time: ${event.summary}");
            continue;
          }
          print("Event found: ${event.summary}");
          appointments.add(event);
        }
        print("Total events retrieved: ${appointments.length}");
      } else {
        print("No events found.");
      }

      return appointments;
    } catch (error) {
      print("Error fetching events: $error");
      return [];
    }
  }
}

class GoogleDataSource extends CalendarDataSource {
  GoogleDataSource({List<googleAPI.Event>? events}) {
    this.appointments = events ?? [];
  }

  @override
  DateTime getStartTime(int index) {
    final googleAPI.Event event = appointments?[index];
    return event.start?.date ??
        event.start?.dateTime?.toLocal() ??
        DateTime.now();
  }

  @override
  DateTime getEndTime(int index) {
    final googleAPI.Event event = appointments?[index];
    return event.endTimeUnspecified == true
        ? (event.start?.date ??
            event.start?.dateTime?.toLocal() ??
            DateTime.now())
        : (event.end?.date?.add(const Duration(days: -1)) ??
            event.end?.dateTime?.toLocal() ??
            DateTime.now());
  }

  @override
  bool isAllDay(int index) {
    return appointments?[index].start?.date != null;
  }

  @override
  String getLocation(int index) {
    return appointments?[index].location ?? '';
  }

  @override
  String getNotes(int index) {
    return appointments?[index].description ?? '';
  }

  @override
  String getSubject(int index) {
    final googleAPI.Event event = appointments?[index];
    return event.summary?.isEmpty ?? true ? 'No Title' : event.summary!;
  }
}

class GoogleAPIClient extends IOClient {
  Map<String, String> _headers;

  GoogleAPIClient(this._headers) : super();

  @override
  Future<IOStreamedResponse> send(BaseRequest request) =>
      super.send(request..headers.addAll(_headers));

  @override
  Future<Response> head(Uri url, {Map<String, String>? headers}) =>
      super.head(url, headers: headers?..addAll(_headers));
}
