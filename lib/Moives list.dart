import 'package:flutter/material.dart';
import 'package:movielist/Details_page.dart';

class MoviesList extends StatefulWidget {
  static String id = "Movies list";
  const MoviesList({super.key});

  @override
  State<MoviesList> createState() => _MoviesListState();
}

class _MoviesListState extends State<MoviesList> {
  List<DropdownMenuItem> itemslist = [];
  List<dynamic> list = [
    {
      "Name": "Under the Dome",
      "Date": "2013-06-24",
      "Describe":
      "The residents of the fictional small town Chester's Mill are cut off from the rest of the world when a massive and indestructible dome traps them, and they must find ways to survive with diminishing resources and rising tensions.",
      "Image":
      "https://static.tvmaze.com/uploads/images/original_untouched/81/202627.jpg"
    },
    {
      "Name": "Blue Bloods",
      "Date": "2010-09-24",
      "Describe": "Revolves around a family of New York cops.",
      "Image":
      "https://static.tvmaze.com/uploads/images/original_untouched/431/1078586.jpg"
    },
    {
      "Name": "Kirby Buckets",
      "Date": "2014-10-20",
      "Describe":
      "Follows 13-year-old Kirby Buckets, who dreams of becoming a famous animator like his idol, Mac MacCallister. Kirby sees his drawings take shape as he and his best friends, Fish and Eli, go on outrageous and unpredictable adventures.",
      "Image":
      "https://static.tvmaze.com/uploads/images/original_untouched/1/4600.jpg"
    },
    {
      "Name": "Murder in the First",
      "Date": "2014-06-09",
      "Describe":
      "A single murder case is dissected from the committing of the crime through to the investigation, arrest and trial.",
      "Image":
      "https://static.tvmaze.com/uploads/images/original_untouched/192/481470.jpg"
    },

  ];

  int selectedMovie = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for ( int x = 0 ; x < list.length; x++ ){
      itemslist.add(DropdownMenuItem(value:x, child: Text(list[x]["Name"])));
    }
  }
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text("Movies List") ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment,
              children: [
                Image.network(list[selectedMovie]["Image"],
                height: MediaQuery.of(context).size.width/ 1.2,),
                Text(list[selectedMovie]["Name"], style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),),
                Text(list[selectedMovie]["Date"], style: TextStyle(fontSize: 20,),),
                Spacer(),

                Row(
                  children: [
                    DropdownButton(
                        value: selectedMovie,
                        items: itemslist,
                        onChanged: (value){
                          selectedMovie = value;
                          setState(() {

                          });

                        }),
                    ElevatedButton(onPressed: (){
                      Navigator.pushNamed(context, DetailsPage.id,arguments: {
                        "arguments": list[selectedMovie]
                      });
                    }, child: Text("More"))
                  ],
                ),


              ],
            ),
          ),
        ),
      
      
      ),
    );
  }
}
