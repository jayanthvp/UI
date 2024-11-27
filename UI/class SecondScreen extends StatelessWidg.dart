class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dashboard')),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Text(
            'Featured Items',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: List.generate(
              3,
              (index) => Card(
                child: Column(
                  children: [
                    Image.network(
                      'https://via.placeholder.com/150',
                      height: 100,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Card ${index + 1}'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Scrollable List',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Column(
            children: List.generate(
              5,
              (index) => ListTile(
                leading: Icon(Icons.star),
                title: Text('Item ${index + 1}'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ThirdScreen(
                              title: 'Item ${index + 1}',
                            )),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}