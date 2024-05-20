import 'package:anagis/screens/property_details.dart';
import 'package:anagis/screens/search.dart';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> properties = [
    {
      'image': 'imagessss/pr1.jpeg',
      'name': 'House ',
      'price': '2000000\$',
      'details':
          'price to rent per months : 7000\$\nfloar: second floar,\nsurronded by services,\nnear to :the sea',
    },
    {
      'image': 'imagessss/pr2.jpeg',
      'name': 'Villa',
      'price': '15000000\$',
      'details':
          'price to rent per months : 27000\$\nsurronded by services,\nnear to :the Park',
    },
    {
      'image': 'imagessss/pr3.jpeg',
      'name': 'Ancient design house',
      'price': '17000000\$',
      'details':
          'price to rent per months : 16000\$\n\nsurronded by services,\nnear to :the Aqua',
    },
    {
      'image': 'imagessss/pr4.jpeg',
      'name': 'High level house',
      'price': 30000000,
      'details':
          'price to rent per months : 17000\$\nsurronded by services,\nnear to :the sea',
    },
    {
      'image': 'imagessss/pr5.jpeg',
      'name': 'Brighting House',
      'price': 8000000,
      'details':
          'price to rent per months : 17000\$nsurronded by services,\nnear to :the sea',
    },
    {
      'image': 'imagessss/pr6.jpeg',
      'name': 'British design house',
      'price': 9000000,
      'details':
          'price to rent per months : 25000\$\nsurronded by services,\nnear to :the sea',
    },
    {
      'image': 'imagessss/pr7.jpeg',
      'name': 'American design house',
      'price': 13000000,
      'details':
          'price to rent per months : 30000\$\nsurronded by services,\nnear to :the sea',
    },
    {
      'image': 'imagessss/pr8.jpeg',
      'name': 'Appartments for students',
      'price': 40000,
      'details':
          'price to rent per months : 7000\$\nsurronded by services,\nnear to :the university',
    },
    {
      'image': 'imagessss/pr9.jpeg',
      'name': 'European design house',
      'price': 13000000,
      'details':
          'price to rent per months : 10000\$\nsurronded by services,\nnear to :the Club',
    },
    {
      'image': 'imagessss/pr10.jpeg',
      'name': 'Simple Homes',
      'price': 300000,
      'details':
          'price to rent per months : 4000\$\nsurronded by services,\nnear to :the university',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Real Estate App'),
      ),
      body: ListView.builder(
        itemCount: properties.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              child: Container(
                width: 180,
                height: 180,
                child: Container(
                  decoration:
                      const BoxDecoration(color: Color.fromARGB(255, 245, 252, 254)),
                  child: Row(
                    children: [
                      Image.network(
                        properties[index]['image'],
                        width: 150,
                        height: 950,
                        fit: BoxFit.fill,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              properties[index]['name'],
                              style: const TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Text('Price: ${properties[index]['price']}'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PropertyDetailsPage(
                      property: properties[index],
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) {
                  return SearchPage();
                })));
              },
              icon: const Icon(Icons.search),
            ),
            label: 'Search',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Map',
          ),
        ],
      ),
    );
  }
}
