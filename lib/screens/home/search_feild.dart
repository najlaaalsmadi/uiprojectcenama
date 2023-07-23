import 'package:cenimabooking/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  List<String> CinemaName = [
    'Prime Cinema Abdali',
    'Prime Cinema Amman',
    'Prime Cinema Irdid',
    'Grand Cinema City Mall',
    'Taj Mall Cinema',
    'Mecca Mall Cinema'
  ];

  TextEditingController _searchController = TextEditingController();
  List<String> _filteredPageNames = [];

  @override
  void initState() {
    super.initState();
    _filteredPageNames = List.from(CinemaName);
  }

  void _onSearchTextChanged() {
    setState(() {
      _filteredPageNames = CinemaName.where((cenimaName) => cenimaName
          .toLowerCase()
          .contains(_searchController.text.toLowerCase())).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(20),
          child: TextField(
            controller: _searchController,
            onChanged: (value) {
              _onSearchTextChanged();
            },
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              prefixIcon: IconButton(
                onPressed: () {
                  _onSearchTextChanged();
                },
                icon: const Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ),
              fillColor: Colors.black38,
              filled: true,
              hintText: "Search for Cinema",
              hintStyle: const TextStyle(color: Colors.grey),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        Visibility(
          visible: _searchController.text.isNotEmpty,
          child: Container(
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: _filteredPageNames.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    _filteredPageNames[index],
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {
                    _navigateToPage(_filteredPageNames[index]);
                  },
                );
              },
              separatorBuilder: (context, index) => Divider(color: labelsColor),
            ),
          ),
        ),
      ],
    );
  }

  void _navigateToPage(String pageName) {
    // Replace with the corresponding route names of the pages you want to navigate to
    switch (pageName) {
      case 'Prime Cinema Abdali':
        context.push(AbdaliCinemaPath);
        break;
      case 'Prime Cinema Amman':
        context.push(AlbarakaCinemaPath);
        break;
      case 'Prime Cinema Irdid':
        context.push(IrbidCinemaPath);
        break;
      case 'Grand Cinema City Mall':
        context.push(GrandCinemaPath);
        break;
      case 'Taj Mall Cinema':
        context.push(TajCinemaPath);
        break;
      case 'Mecca Mall Cinema':
        context.push(MeccaCinemaPath);
        break;
    }
  }
}
