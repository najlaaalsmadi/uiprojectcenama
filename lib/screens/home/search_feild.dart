import 'package:cenimabooking/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class SearchWidget extends StatefulWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  List<String> CinemaName =['Prime Cinema Abdali','Prime Cinema Amman','Prime Cinema Irdid','Grand Cinema City Mall','Taj Mall Cinema','Mecca Mall Cinema'];
  String _searchQuery="";
  List<String> _filteredPageNames = [];

  @override
  void initState() {
    super.initState();
    _filteredPageNames.addAll(CinemaName);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Container(
          margin: const EdgeInsets.all(20),
          child: TextField(
            onChanged: _onSearchTextChanged,
            decoration: InputDecoration(
              prefixIcon: IconButton(onPressed:(){

              },icon: const Icon(Icons.search,color: Colors.grey,)),
              //suffix: IconButton(onPressed: ()=>_searchController.clear(),
              // icon: const Icon(Icons.clear,color: Colors.grey,)),
              suffixIcon: const Icon(Icons.interests_outlined,color: Colors.grey,),
              fillColor: Colors.black38,
              filled: true,
              hintText: "Search movie",
              hintStyle: const TextStyle(color: Colors.grey),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide:   BorderSide.none,
              ),
            ),),
        ),
        Visibility(
          visible: _searchQuery.isNotEmpty,
          child: Expanded(
            child: ListView.builder(
              itemCount: _filteredPageNames.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_filteredPageNames[index]),
                  onTap: () {
                    _navigateToPage(_filteredPageNames[index]);
                  },
                );
              },
            ),
          ),
        ),
      ],),
    );
  }
  void _onSearchTextChanged(String value) {
    setState(() {
      _searchQuery = value;
      _filteredPageNames = CinemaName
          .where((pageName) =>
          pageName.toLowerCase().contains(_searchQuery.toLowerCase()))
          .toList();
    });
  }

  void _navigateToPage(String pageName) {
    // Replace with the corresponding route names of the pages you want to navigate to
    switch (pageName) {
      case 'Prime Cinema Abdali':
        context.go(AbdaliCinemaPath);
        break;
      case 'Prime Cinema Amman':
        context.go(AlbarakaCinemaPath);
        break;
      case 'Prime Cinema Irdid':
        context.go(IrbidCinemaPath);
        break;
      case 'Grand Cinema City Mall':
        context.go(GrandCinemaPath);
        break;
      case 'Taj Mall Cinema':
        context.go(TajCinemaPath);
        break;
      case 'Mecca Mall Cinema':
        context.go(MeccaCinemaPath);
        break;

    }
  }
}



