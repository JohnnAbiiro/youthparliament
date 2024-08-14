SizedBox(
height: 300,
child: ListView.builder(
itemCount: 4,
itemBuilder: (context, index) {
List<Widget> items = [
ListTile(
title: Text(Constants.title),
subtitle: Text(
DateFormat.yMMMMEEEEd().add_jm().format(DateTime.now()),
),
leading: SizedBox(
width: 50.0,
height: 50.0,
child: Image.asset(Constants.youthImage),
),
),
Container(
padding: const EdgeInsets.all(16.0),
color: Colors.blue,
child: const Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text("A blue container", style: TextStyle(color: Colors.white)),
SizedBox(height: 10),
Icon(Icons.check_circle, color: Colors.white),
],
),
),
const Text(
"Simple text widget",
style: TextStyle(fontSize: 18),
),
Image.asset(Constants.youthImage),
];
return items[index];
},
),
),

Icon(Icons.check_circle, color: Colors.white),