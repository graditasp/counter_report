import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_database/firebase_database.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ); // Pastikan Firebase sudah terhubung
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterTableScreen(),
    );
  }
}

class CounterTableScreen extends StatefulWidget {
  @override
  _CounterTableScreenState createState() => _CounterTableScreenState();
}

class _CounterTableScreenState extends State<CounterTableScreen> {
  final DatabaseReference dbRef = FirebaseDatabase.instance.ref("counter");
  Map<String, Map<String, dynamic>> counterData = {};

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    final snapshot = await dbRef.once();
    if (snapshot.snapshot.value != null) {
      setState(() {
        // Konversi ke Map<String, dynamic>
        counterData = (snapshot.snapshot.value as Map).map(
          (key, value) => MapEntry(key.toString(), Map<String, dynamic>.from(value)),
        );
      }); 
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Table'),
      ),
      body: counterData.isEmpty
          ? Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                columns: [
                  DataColumn(label: Text('PROCESS NAME')),
                  DataColumn(label: Text('7:30')),
                  DataColumn(label: Text('9:30')),
                  DataColumn(label: Text('10:30')),
                  DataColumn(label: Text('11:30')),
                  DataColumn(label: Text('13:30')),
                  DataColumn(label: Text('14:30')),
                  DataColumn(label: Text('15:30')),
                  DataColumn(label: Text('16:30')),
                  DataColumn(label: Text('TOTAL')),
                ],
                rows: counterData.entries.map((entry) {
                  final processName = entry.key;
                  final processData = entry.value;
                  return DataRow(
                    cells: [
                      DataCell(Text(processName)),
                      DataCell(Text(processData["7:30"]?.toString() ?? "0")),
                      DataCell(Text(processData["9:30"]?.toString() ?? "0")),
                      DataCell(Text(processData["10:30"]?.toString() ?? "0")),
                      DataCell(Text(processData["11:30"]?.toString() ?? "0")),
                      DataCell(Text(processData["13:30"]?.toString() ?? "0")),
                      DataCell(Text(processData["14:30"]?.toString() ?? "0")),
                      DataCell(Text(processData["15:30"]?.toString() ?? "0")),
                      DataCell(Text(processData["16:30"]?.toString() ?? "0")),
                      DataCell(Text(processData["total_count"]?.toString() ?? "0")),
                    ],
                  );
                }).toList(),
              ),
            ),
    );
  }
}


